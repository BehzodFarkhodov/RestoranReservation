package org.example.controller;

import org.example.entity.RestaurantEntity;
import org.example.enumertaror.RestaurantType;
import org.example.service.FileService;
import org.example.service.RestaurantService;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@Controller
public class RestaurantController {
    @Autowired
    private RestaurantService restaurantService;
    @Autowired
    private FileService fileService;

/*
    @GetMapping("/create-restaurant")
    public String showCreateRestaurantForm(Model model) {
        model.addAttribute("restaurant", new RestaurantEntity());
        RestaurantType[] types = RestaurantType.values();
        model.addAttribute("restaurantTypes", types);
        return "create-restaurant";
    }


    @PostMapping("/create-restaurant")
    public String createRestaurant(@RequestParam("name") String name,
                                   @RequestParam("address") String address,
                                   @RequestParam("location") String location,
                                   @RequestParam("phone") String phone,
                                   @RequestParam("type") RestaurantType type,
                                   @RequestParam("picture") MultipartFile file) {
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
    }*/




    /*       said4ik controller*/


    @GetMapping("/create-restaurant")
    public String createRestaurantPage() {
        return "create-restaurant";
    }


    @RequestMapping(value = "/create-restaurant", method = RequestMethod.POST)
    public String createRestaurant(@RequestParam("name") String name,
                                   @RequestParam("address") String address,
                                   @RequestParam("location") String location,
                                   @RequestParam("phone") String phone,
                                   @RequestParam("type") RestaurantType type,
                                   @RequestParam("picturePath") MultipartFile picture,
                                   Model model) {

        RestaurantEntity restaurant = RestaurantEntity.builder()
                .name(name)
                .address(address)
                .location(location)
                .phone(phone)
                .type(type)
                .build();


        restaurantService.save(restaurant);
        List<RestaurantEntity> all = restaurantService.getAll();

        model.addAttribute("restaurants", all);


        try {
            fileService.saveFile(picture, true);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return "create-restaurant";


    }

}
