package org.example.controller;

import org.example.service.ProductService;
import org.example.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FilterController {
    @Autowired
    private RestaurantService restaurantService;
    @Autowired
    private ProductService productService;

    @GetMapping("/filter")
    public String filter(@RequestParam("name") String name) {
        restaurantService.filter(name);
        productService.filter(name);
        return "filter";
    }
}
