package org.example.controller;

import org.example.entity.ProductEntity;
import org.example.entity.RestaurantEntity;
import org.example.enumertaror.RestaurantType;
import org.example.repository.RestaurantRepo;
import org.example.service.FileService;
import org.example.service.ProductService;
import org.example.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
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
    private RestaurantRepo restaurantRepo;


    @RequestMapping("/create-product")
    public String save(Model model) {
        model.addAttribute("restaurant", new RestaurantEntity());
        model.addAttribute("restaurants", restaurantService.getAll());
        return "create-product";
    }

    @GetMapping("/products")
    public String getAllProducts(Model model) {
        List<ProductEntity> products = productService.findAll();
        System.out.println("Products found: " + products.size());
        model.addAttribute("products", products);
        return "products";
    }

@RequestMapping(value = "/create-product", method = RequestMethod.POST, consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
public String create(@ModelAttribute ProductEntity product,
                     @RequestParam("imageFile") MultipartFile file,
                     @RequestParam("restaurantId") UUID restaurantId) {

    try {
        if (!file.isEmpty()) {
            String imagePath = fileService.saveFile(file, true);
            product.setImagePath(imagePath);
        }
        RestaurantEntity restaurant =restaurantRepo.findById(restaurantId);
        if (restaurant != null) {
            product.setRestaurant(restaurant);
        }

        productService.save(product);

    } catch (IOException e) {
        throw new RuntimeException(e);
    }
    return "products";
}




    @GetMapping("/view-restaurant")
    public String viewRestaurantProducts(@RequestParam("id") UUID id, Model model) {
        List<ProductEntity> products = productService.getProductsByRestaurant(id);
        model.addAttribute("products", products);
        return "products";
    }



}
