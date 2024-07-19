package org.example.controller;

import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import org.example.entity.UserEntity;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;
import java.util.UUID;

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
        userService.login(user.getEmail(), user.getPassword());
        session.setAttribute("userId", UUID.randomUUID());
        return "create-restaurant";
    }




}

