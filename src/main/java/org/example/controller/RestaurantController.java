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
import java.util.List;

@Controller
public class RestaurantController {
    @Autowired
    private RestaurantService restaurantService;
    @Autowired
    private FileService fileService;

    @GetMapping(value = "/create-restaurant")
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

    @PostMapping(value = "/create-restaurant")
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

    @RequestMapping("/restaurants")
    public String getAllRestaurants(Model model) {
        model.addAttribute("restaurants", restaurantService.getAll());
        return "restaurants";
    }

    @RequestMapping("/search")
    public String searchRestaurants(@RequestParam(value = "location", required = false) String location,
                                    @RequestParam(value = "name", required = false) String name,
                                    @RequestParam(value = "address", required = false) String address,
                                    Model model) {
        List<RestaurantEntity> restaurants = restaurantService.searchRestaurants(location, name, address);
        model.addAttribute("restaurants", restaurants);
        return "main";
    }

}
