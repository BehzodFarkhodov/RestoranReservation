package org.example.controller;

import jakarta.servlet.http.HttpSession;
import org.eclipse.tags.shaded.org.apache.bcel.generic.IF_ACMPEQ;
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

import java.util.List;
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

        List<CommentEntity> allComments = commentService.getAllComments();
        model.addAttribute("comments", allComments);
        return "comment";
    }


    @RequestMapping(value = "/comment-save", method = RequestMethod.POST)
    public String saveComment(@ModelAttribute CommentEntity comment,
                              HttpSession session, Model model) {


        UUID userId = (UUID) session.getAttribute("userId");

        model.addAttribute("restaurant", restaurantService.findById(comment.getRestaurant().getId()));


        if (Objects.isNull(userId)) {
            return "404";
        }


        comment.setUser(userService.findById(userId));
        comment.setRestaurant(restaurantService.findById(comment.getRestaurant().getId()));
        commentService.saveComment(comment);


        List<CommentEntity> allComments = commentService.getAllComments();
        model.addAttribute("comments", allComments);
        return "comment";
    }


    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") UUID uuid, Model model) {


        commentService.deleteComment(uuid);

        List<CommentEntity> allComments = commentService.getAllComments();
        model.addAttribute("comments", allComments);
        return "comment";
    }


    /*@RequestMapping(value = "/comment", method = RequestMethod.GET)
    public String showComments(Model model, HttpSession session) {
        UUID userId = (UUID) session.getAttribute("userId");

        if (Objects.isNull(userId)) {
            return "404";
        }


        UserEntity user = userService.findById(userId);
        if (user == null) {
            return "404";
        }


        List<CommentEntity> comments = commentService.getAllComments();
        model.addAttribute("comments", comments);
        model.addAttribute("userId", userId);

        return "comment";
    }*/


}
