package org.example.controller;

import jakarta.servlet.http.HttpSession;
import org.example.DTO.ProductDTO;
import org.example.entity.ProductEntity;
import org.example.entity.RestaurantEntity;
import org.example.entity.UserEntity;
import org.example.service.FileService;
import org.example.service.ProductService;
import org.example.service.RestaurantService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.util.List;
import java.util.UUID;


@Controller
public class ProductController {


    @Autowired
    private ProductService productService;
    @Autowired
    private RestaurantService restaurantService;

    @Autowired
    private FileService fileService;
    @Autowired
    private UserService userService;

    @GetMapping("/create-own-product")
    public String showCreateProductForm(Model model, HttpSession session) {
        UUID userId = (UUID) session.getAttribute("userId");
        if (userId == null) {
            return "redirect:/register";
        }
        model.addAttribute("product", new ProductDTO());
        model.addAttribute("restaurants", restaurantService.findAllByOwner(userId));
        return "create-own-product";
    }

    @PostMapping("/create-own-product")
    public String createProduct(@ModelAttribute ProductDTO productDTO,
                                @RequestParam("imageFile") MultipartFile file,
                                HttpSession session) {

        if (!file.isEmpty()) {
            try {
                String imagePath = fileService.saveFile(file, true);
                productDTO.setImagePath(imagePath);
            } catch (IOException e) {
                e.printStackTrace();
                return "redirect:/error";
            }
        }

        UUID userId = (UUID) session.getAttribute("userId");
        if (userId == null) {
            return "redirect:/register";
        }

        UserEntity user = userService.findById(userId);
        if (user == null) {
            return "redirect:/register";
        }

        ProductEntity product = new ProductEntity();
        product.setFoodName(productDTO.getFoodName());
        product.setFoodDescription(productDTO.getFoodDescription());
        product.setPrice(productDTO.getPrice());
        product.setQuantity(productDTO.getQuantity());
        product.setImagePath(productDTO.getImagePath());
        product.setOwner(user);
        RestaurantEntity restaurant = restaurantService.findById(productDTO.getRestaurantId());
        if (restaurant == null) {
            return "redirect:/error";
        }
        product.setRestaurant(restaurant);

        productService.createProduct(product);
        return "redirect:/products";
    }


    @RequestMapping("/products")
    public String getAllProducts(Model model) {
        List<ProductEntity> products = productService.findAll();
        System.out.println("Products found: " + products.size());
        model.addAttribute("products", products);
        return "products";
    }


    @GetMapping("/view-restaurant")
    public String viewRestaurantProducts(@RequestParam("id") UUID id, Model model) {
        List<ProductEntity> products = productService.getProductsByRestaurant(id);
        model.addAttribute("products", products);
        return "products";
    }


    @PostMapping("/view-own-restaurant")
    public String viewOwnRestaurantProduct(@RequestParam("restaurantId") UUID id, Model model) {
        List<ProductEntity> productEntities = productService.getProductsByRestaurant(id);
        model.addAttribute("products", productEntities);
        return "view-own-restaurant-product";
    }


    @PostMapping("/delete-product")
    public String deleteProduct(@RequestParam("productId") UUID productId, Model model) {
        ProductEntity product = productService.getProductById(productId);
        try {
            productService.delete(productId);
            model.addAttribute("successMessage", "Product successfully deleted");
        } catch (IllegalStateException e) {
            return "error";
        }
        List<ProductEntity> productsByRestaurant = productService.getProductsByRestaurant(product.getRestaurant().getId());
        model.addAttribute("products", productsByRestaurant);
        return "view-own-restaurant-product";
    }


    @GetMapping("/update-product")
    public ModelAndView showUpdateForm(@RequestParam("productId") UUID productId, Model model) {
        ProductEntity product = productService.getProductById(productId);
        if (product == null) {
            return new ModelAndView("error").addObject("message", "Product not found");
        }
        List<ProductEntity> productsByRestaurant = productService.getProductsByRestaurant(product.getRestaurant().getId());
        model.addAttribute("products", productsByRestaurant);
        return new ModelAndView("update-product").addObject("product", product);
    }


    @PostMapping("/update-product")
    public String updateProduct(
            @RequestParam("productId") UUID productId,
            @RequestParam("foodName") String foodName,
            @RequestParam("foodDescription") String foodDescription,
            @RequestParam("price") double price,
            @RequestParam("quantity") int quantity,
            @RequestParam("imagePath") String imagePath,
            HttpSession session,
            RedirectAttributes redirectAttributes, Model model) {

        try {
            //UserEntity owner = (UserEntity) session.getAttribute("userId");
            UUID owner = (UUID) session.getAttribute("userId");
            if (owner == null) {
                redirectAttributes.addFlashAttribute("errorMessage", "Sessiyada egasi topilmadi");
                return "404";
            }

            ProductEntity product = productService.findById(productId);
            if (product == null) {
                redirectAttributes.addFlashAttribute("errorMessage", "Mahsulot topilmadi");
                return "error";
            }
            product.setFoodName(foodName);
            product.setFoodDescription(foodDescription);
            product.setPrice(price);
            product.setQuantity(quantity);
            product.setImagePath(imagePath);
            product.setOwner(product.getOwner());
            productService.updateProduct(product);
            redirectAttributes.addFlashAttribute("successMessage", "Mahsulot muvaffaqiyatli yangilandi");
            List<ProductEntity> productsByRestaurant = productService.getProductsByRestaurant(product.getRestaurant().getId());
            model.addAttribute("products", productsByRestaurant);
            return "view-own-restaurant-product";
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Mahsulotni yangilashda xato: " + e.getMessage());
            return "error";
        }
    }


}
