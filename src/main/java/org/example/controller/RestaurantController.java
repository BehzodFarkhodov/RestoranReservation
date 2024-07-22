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


    @RequestMapping(value = "/create-restaurant",method = RequestMethod.POST)
    public String createRestaurant(@RequestParam(value = "name", required = true)
                                   String name,
                                   @RequestParam(value = "address", required = true)
                                   String address,
                                   @RequestParam(value = "location", required = true)
                                   String location,
                                   @RequestParam(value = "phone", required = true)
                                   String phone,
                                   @RequestParam(value = "type", required = true)
                                   RestaurantType type,
                                   @RequestParam(value = "picture", required = false)
                                   MultipartFile file) {

        RestaurantEntity restaurant = new RestaurantEntity();
        restaurant.setName(name);
        restaurant.setAddress(address);
        restaurant.setLocation(location);
        restaurant.setPhone(phone);
        restaurant.setType(type);


        try {
            if (!file.isEmpty()) {
                String picturePath = fileService.saveFile(file, true);
                restaurant.setPicturePath(picturePath);
            }
            restaurantService.save(restaurant);
        } catch (IOException e) {
            e.printStackTrace();
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
