package org.example.controller;

import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import org.example.entity.OrderEntity;
import org.example.entity.RestaurantEntity;
import org.example.entity.UserEntity;
import org.example.service.RestaurantService;
import org.example.service.UserService;
import org.hibernate.dialect.unique.CreateTableUniqueDelegate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;


@Controller
@AllArgsConstructor
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private RestaurantService restaurantService;

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
    public String login(@ModelAttribute UserEntity user, HttpSession session, Model model) {
        UserEntity loggedInUser;
        try {
            loggedInUser = userService.login(user.getEmail(), user.getPassword());
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Invalid username or password");
            return "login";
        }

        session.setAttribute("userId", loggedInUser.getId());

        if (user.getEmail().equals("behzodfarhodov13@gmail.com")) {
            return "admin-main-menu";
        } else {
            model.addAttribute("restaurants", restaurantService.getAll());
            return "main";
        }
    }

    @RequestMapping("/update-profile")
    public String updateProfile(@RequestParam("username") String username,Model model,
//                                @RequestParam("password") String password,
                                @RequestParam("currentPassword") String currentPassword,
                                @RequestParam("email") String email, HttpSession session) {
        UUID userId = (UUID) session.getAttribute("userId");
        UserEntity user = userService.updateProfile(userId, username, currentPassword, email);
        model.addAttribute("user", user);
        return "user-menu";
    }


    @RequestMapping("/user-menu")
    public String showUserMenu(HttpSession session, Model model) {
        UUID userId = (UUID) session.getAttribute("userId");
        if (userId == null) {
            return "404";
        }
        model.addAttribute("user", userService.getUser(userId));
        return "user-menu";
    }




    @RequestMapping("/update-balance")
    public String updateBalance(@RequestParam("adjustBalance") double balance, HttpSession session, Model model) {
        UUID userId = (UUID) session.getAttribute("userId");
        UserEntity user = userService.getUser(userId);
        balance = user.getBalance() + balance;
        user.setBalance(balance);
        userService.save(user);
        UserEntity user1 = userService.getUser(userId);
        model.addAttribute("user", user1);
        return "user-menu";
    }


    @RequestMapping("/user-orders")
    public String showUserOrders(HttpSession session) {
        List<OrderEntity> userOrders = userService.getOrders(userService.getUser((UUID) session.getAttribute("userId")));
        session.setAttribute("orders", userOrders);
        return "user-orders";
    }


}

