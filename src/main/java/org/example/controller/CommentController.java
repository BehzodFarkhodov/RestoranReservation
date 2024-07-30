package org.example.controller;

import jakarta.servlet.http.HttpSession;
import org.example.entity.*;
import org.example.service.CommentService;
import org.example.service.RestaurantService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Objects;
import java.util.UUID;


@Controller
public class CommentController {


    @Autowired
    private CommentService commentService;


    @Autowired
    private UserService userService;

    @Autowired
    private RestaurantService restaurantService;

    @RequestMapping(value = "/comment-save")
    public String savePage(@RequestParam("id") UUID restaurantId, Model model) {
        RestaurantEntity restaurant = restaurantService.findById(restaurantId);
        CommentEntity comment = new CommentEntity();
        comment.setRestaurant(restaurant);
        model.addAttribute("comment", comment);
        model.addAttribute("restaurant", restaurant);
        return "comment";
    }


    @RequestMapping(value = "/comment-save", method = RequestMethod.POST)
    public String saveComment(@ModelAttribute CommentEntity comment, HttpSession session) {

        UUID userId = (UUID) session.getAttribute("userId");

        if (Objects.isNull(userId)) {
            return "404";
        }
        comment.setUser(userService.findById(userId));
        commentService.saveComment(comment);
        return "comment";
    }

}
