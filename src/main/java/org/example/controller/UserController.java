package org.example.controller;

import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import org.example.entity.OrderEntity;
import org.example.entity.UserEntity;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@AllArgsConstructor
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/register")
    public String showRegistrationForm() {
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@RequestParam("username") String username, @RequestParam("email") String email) {
        userService.register(username, email);
        return "verification";
    }

    @GetMapping("/verify")
    public String showVerificationForm() {
        return "verification";
    }

    @PostMapping("/verify")
    public String verifyUser(@RequestParam("email") String email, @RequestParam("code") String code) {
        boolean verified = userService.verify(email, code);
        return verified ? "login" : "failure";
    }


    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }


    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(@ModelAttribute UserEntity user, HttpSession session) {
        UserEntity loggedInUser = userService.login(user.getEmail(), user.getPassword());

        if (loggedInUser != null && user.getEmail().equals("muxammadaminartikov@gmail.com") || user.getEmail().equals("behzodfarhodov13@gmail.com")) {

            session.setAttribute("user", loggedInUser);
            return "admin-main-menu";
        } else {
            return "main";
        }
    }

//    @RequestMapping(value = "login", method = RequestMethod.POST)
//    public String login(@ModelAttribute UserEntity user, HttpSession session) {
//        UserEntity loggedInUser = userService.login(user.getEmail(), user.getPassword());
//
//        if (loggedInUser != null && loggedInUser.getEmail().equals("behzodfarhodov13@gmail.com")) {
//            session.setAttribute("userId", loggedInUser.getId());
//            return "create-restaurant";
//        } else {
//            session.setAttribute("user", loggedInUser);
//            return "main";
//        }
//    }


    @RequestMapping("/update-profile")
    public String updateProfile(@RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("email") String email, HttpSession session) {
        List<OrderEntity> userOrders = userService.updateProfile(username, password, email);
        session.setAttribute("orders", userOrders);
        return "main";
    }

    @RequestMapping("/user-menu")
    public String showUserMenu() {
        return "user-menu";
    }

    @RequestMapping("/update-balance")
    public String updateBalance(@RequestParam("adjustBalance") double balance, HttpSession session) {
        UserEntity user = (UserEntity) session.getAttribute("user");
        user.setBalance(balance);
        userService.save(user);
        return "main";
    }




}

