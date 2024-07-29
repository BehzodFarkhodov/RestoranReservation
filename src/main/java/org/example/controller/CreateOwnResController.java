package org.example.controller;

import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import org.example.DTO.RestaurantDTO;
import org.example.entity.RestaurantEntity;
import org.example.entity.UserEntity;
import org.example.enumertaror.RestaurantType;
import org.example.service.FileService;
import org.example.service.ReservationService;
import org.example.service.RestaurantService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.UUID;

@AllArgsConstructor
@Controller
public class CreateOwnResController {
    @Autowired
    private RestaurantService restaurantService;
    @Autowired
    private FileService fileService;
    @Autowired
    private UserService userService;


//    @GetMapping(value = "/create-own-restaurant")
//    public String showCreateRestaurantForm(Model model) {
//        model.addAttribute("restaurant", new RestaurantEntity());
//        RestaurantType[] types = RestaurantType.values();
//        model.addAttribute("restaurantTypes", types);
//        return "create-own-restaurant";
//    }

//    @PostMapping("/create-own-restaurant")
//    public String createRestaurant(@ModelAttribute RestaurantDTO restaurant,
//                                   @RequestParam("picture") MultipartFile file,
//                                   HttpSession session) {
//
//        if (!file.isEmpty()) {
//            try {
//                String picturePath = fileService.saveFile(file, true);
//                restaurant.setPicturePath(picturePath);
//            } catch (IOException e) {
//                e.printStackTrace();
//                return "redirect:/error";
//            }
//        }
//
//        UserEntity user = (UserEntity) session.getAttribute("user");
//        if (user == null) {
//            return "redirect:/login";
//        }
//
//        restaurantService.createRestaurant(restaurant, user);
//        return "redirect:/restaurants";
//    }
//


    @GetMapping(value = "/create-own-restaurant-main")
    public String showMainMenu(){
        return "create-own-restaurant-main";
    }

    @GetMapping(value = "/create-own-restaurant")
    public String showCreateRestaurantForm(Model model) {
        model.addAttribute("restaurant", new RestaurantDTO());
        RestaurantType[] types = RestaurantType.values();
        model.addAttribute("restaurantTypes", types);
        return "create-own-restaurant";
    }

    @PostMapping("/create-own-restaurant")
    public String createRestaurant(@ModelAttribute RestaurantDTO restaurantDTO,
                                   @RequestParam("picture") MultipartFile file,
                                   HttpSession session) {

        if (!file.isEmpty()) {
            try {
                String picturePath = fileService.saveFile(file, true);
                restaurantDTO.setPicturePath(picturePath);
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

        RestaurantEntity restaurant = new RestaurantEntity();
        restaurant.setName(restaurantDTO.getName());
        restaurant.setAddress(restaurantDTO.getAddress());
        restaurant.setLocation(restaurantDTO.getLocation());
        restaurant.setPhone(restaurantDTO.getPhone());
        restaurant.setType(RestaurantType.valueOf(String.valueOf(restaurantDTO.getType())));
        restaurant.setPicturePath(restaurantDTO.getPicturePath());
        restaurant.setOwner(user);

        restaurantService.createRestaurant(restaurant,user);
        return "redirect:/restaurants";
    }

    ///////////

    @PostMapping("/delete-restaurant")
    public String deleteRestaurant(@RequestParam("restaurantId") UUID restaurantId, Model model) {
        boolean deleted = restaurantService.deleteRestaurant(restaurantId);
        if (!deleted) {
            return "error-page";
        }
        return "show-all-own-user-restaurant";
    }









}
