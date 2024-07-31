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


//    @RequestMapping("/create-product")
//    public String save(Model model) {
//        model.addAttribute("restaurant", new RestaurantEntity());
//        model.addAttribute("restaurants", restaurantService.getAll());
//        return "create-product";
//    }
//
//    @RequestMapping("/products")
//    public String getAllProducts(Model model) {
//        List<ProductEntity> products = productService.findAll();
//        System.out.println("Products found: " + products.size());
//        model.addAttribute("products", products);
//        return "products";
//    }
//
//    @GetMapping("/view-restaurant")
//    public String viewRestaurantProducts(@RequestParam("id") UUID id, Model model) {
//        List<ProductEntity> products = productService.getProductsByRestaurant(id);
//        model.addAttribute("products", products);
//        return "products";
//    }
//
//    @RequestMapping(value = "/create-product", method = RequestMethod.POST,
//            consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
//    public String create(@ModelAttribute ProductEntity product,
//                         @RequestParam("imageFile") MultipartFile file,
//                         @RequestParam("restaurantId") UUID restaurantId) {
//
//        try {
//            if (!file.isEmpty()) {
//                String imagePath = fileService.saveFile(file, true);
//                product.setImagePath(imagePath);
//            }
//            RestaurantEntity restaurant = restaurantRepo.findById(restaurantId);
//            if (restaurant != null) {
//                product.setRestaurant(restaurant);
//            }
//
//            productService.save(product);
//
//        } catch (IOException e) {
//            throw new RuntimeException(e);
//        }
//        return "products";
//    }


    //////// craete user own controller

    @GetMapping("/create-own-product")
    public String showCreateProductForm(Model model,HttpSession session) {
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



//    @GetMapping("/list")
//    public String listProducts(Model model) {
//        List<ProductEntity> products = productService.findAll();
//        model.addAttribute("products", products);
//        return "show-own-product";
//    }
//
//    @GetMapping("/view-restaurant")
//    public String viewRestaurantProducts(@RequestParam("id") UUID id, Model model) {
//        List<ProductEntity> products = productService.getProductsByRestaurant(id);
//        model.addAttribute("products", products);
//        return "show-own-product";
//    }

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
    public String viewOwnRestaurantProduct(@RequestParam("restaurantId") UUID id,Model model){
        List<ProductEntity> productEntities = productService.getProductsByRestaurant(id);
        model.addAttribute("products",productEntities);
        return "view-own-restaurant-product";
    }



    @GetMapping("/update-product")
    public String showUpdateForm(@RequestParam("productId") UUID productId, Model model) {
        ProductEntity product = productService.getProductById(productId);
        model.addAttribute("product", product);
        return "update-product";
    }

    @PostMapping("/update-product")
    public String updateProduct(@ModelAttribute ProductEntity product) {
        productService.save(product);
        return "view-own-restaurant-product";
    }


    @PostMapping("/delete-product")
    public String deleteProduct(@RequestParam("productId") UUID productId, Model model) {
        try {
            productService.delete(productId);
            model.addAttribute("successMessage", "Product successfully deleted");
        } catch (IllegalStateException e) {
            return "error";
        }
        List<ProductEntity> products = productService.findAll();
        model.addAttribute("products", products);
        return "create-own-restaurant-main";
    }




}
