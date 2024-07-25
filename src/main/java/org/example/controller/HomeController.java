package org.example.controller;

import lombok.AllArgsConstructor;
import org.example.entity.RestaurantEntity;
import org.example.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@AllArgsConstructor
public class HomeController {
    @Autowired
    private RestaurantService restaurantService;

    @RequestMapping("/")
    public String start(Model model) {
        List<RestaurantEntity> restaurants = restaurantService.getAll();
        model.addAttribute("restaurants", restaurants); // Add the restaurants to the model
        return "main";
    }
}
