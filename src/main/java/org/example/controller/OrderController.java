package org.example.controller;
import jakarta.servlet.http.HttpSession;
import org.example.entity.OrderEntity;
import org.example.entity.ProductEntity;
import org.example.service.OrderService;
import org.example.service.ProductService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Objects;
import java.util.UUID;

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private UserService userService;

    @Autowired
    private ProductService productService;


    @RequestMapping(value = "/save-order")
    public String savePage(@RequestParam("productId") UUID productId, Model model) {
        ProductEntity product = productService.findById(productId);

        OrderEntity order = new OrderEntity();
        order.setProduct(product);
        model.addAttribute("order", order);
        model.addAttribute("product", product);

        return "order";
    }

    @RequestMapping(value = "/save-order", method = RequestMethod.POST)
    public String save(@ModelAttribute OrderEntity order, Model model, HttpSession session) {

        UUID userId = (UUID) session.getAttribute("userId");

        if (Objects.isNull(userId)) {
            return "404";
        }
        order.setUser(userService.findById(userId));
        orderService.save(order);
        List<OrderEntity> orderEntities = orderService.findAll();
        model.addAttribute("orders", orderEntities);
        return "order";
    }



    @RequestMapping( "/show-restaurant-order")
    public String showRestaurantOrder(Model model) {
        List<OrderEntity> orders = orderService.findAll();
        model.addAttribute("orders", orders);
        return "users-restaurant-order";
    }



   /* @GetMapping( "/show-restaurant-order")
    public ModelAndView helper(Model model){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("users-restaurant-order");
        List<OrderEntity> orders = orderService.findAll();
        model.addAttribute("orders", orders);
        return mav;
    }*/




}
