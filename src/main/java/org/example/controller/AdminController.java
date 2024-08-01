package org.example.controller;

import lombok.AllArgsConstructor;
import org.example.entity.RestaurantEntity;
import org.example.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@AllArgsConstructor
public class AdminController {

    @Autowired
    private RestaurantService restaurantService;

    @RequestMapping("/show-all-restaurant")
    public String showAllRestaurants(Model model) {
        model.addAttribute("restaurants", restaurantService.getAll());
        return "show_restoran";
    }

}
