package org.example.controller;

import org.example.entity.RestaurantEntity;
import org.example.enumertaror.RestaurantType;
import org.example.service.FileService;
import org.example.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
public class RestaurantController {
    @Autowired
    private RestaurantService restaurantService;
    @Autowired
    private FileService fileService;

    @GetMapping("/create-restaurant")
    public String showCreateRestaurantForm(Model model) {
        model.addAttribute("restaurant", new RestaurantEntity());
        RestaurantType[] types = RestaurantType.values();
        model.addAttribute("restaurantTypes", types);
        return "create-restaurant";
    }



//    @RequestMapping("/create-restaurant")
//    public String createRestaurant(@ModelAttribute RestaurantEntity restaurant, Model model) {
//        restaurantService.save(restaurant);
//        return "redirect:/restaurants";
//    }

    @RequestMapping("/create-restaurant")
    public String createRestaurant(@ModelAttribute RestaurantEntity restaurant,
                                   @RequestParam("picture") MultipartFile file) {
        try {
            if (!file.isEmpty()) {
                String picturePath = fileService.saveFile(file, true);
                restaurant.setPicturePath(picturePath);
            }
            restaurantService.save(restaurant);
        } catch (IOException e) {
            return "error";
        }
        return "redirect:/restaurants";
    }

    @GetMapping("/restaurants")
    public String getAllRestaurants(Model model) {
        model.addAttribute("restaurants", restaurantService.getAll());
        return "restaurants";
    }
}
