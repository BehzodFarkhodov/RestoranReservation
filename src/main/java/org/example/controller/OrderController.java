package org.example.controller;

import jakarta.servlet.http.HttpSession;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.example.entity.OrderEntity;
import org.example.entity.ProductEntity;
import org.example.entity.ReservationEntity;
import org.example.entity.UserEntity;
import org.example.service.OrderService;
import org.example.service.ProductService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


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

        UserEntity user = userService.findById(userId);
        ProductEntity product = productService.findById(order.getProduct().getId());

        if (user == null || product == null) {
            return "404";
        }

        double productPrice = product.getPrice();
        double userBalance = user.getBalance();

        if (userBalance < productPrice) {
            model.addAttribute("errorMessage", "Sizning balansingiz yetarli emas.");
            return "order";
        }


        user.setBalance(userBalance - productPrice);
        userService.save(user);


        order.setUser(user);
        orderService.save(order);

        List<OrderEntity> orderEntities = orderService.findAll();
        model.addAttribute("orders", orderEntities);

        return "order";
    }


    @RequestMapping("/show-restaurant-order")
    public String showRestaurantOrder(Model model) {
        List<OrderEntity> orders = orderService.findAll();
        model.addAttribute("orders", orders);
        return "users-restaurant-order";
    }

    @RequestMapping("/view-own-order-restaurant")
    public String showRestaurantOwnOrder(@RequestParam("restaurantId")UUID restaurantId, Model model,HttpSession session){
        UUID userId = (UUID) session.getAttribute("userId");

        if (userId == null) {
            return "redirect:/login";
        }
        List<OrderEntity> orders = orderService.findOrdersByUserAndRestaurant(restaurantId);
        model.addAttribute("orders", orders);
        return "users-restaurant-order";
    }



    @RequestMapping(value = "/accept-order",method = RequestMethod.POST)
    public String acceptOrders(@RequestParam("orderId") UUID orderId, RedirectAttributes redirectAttributes) {
        OrderEntity order = orderService.findById(orderId);
        order.setStatus("ACCEPTED");
        orderService.save(order);
        redirectAttributes.addFlashAttribute("message", "Reservation accepted and user notified!");
        return "users-restaurant-order";
    }



    @RequestMapping(value = "/show-accepted-orders", method = RequestMethod.GET)
    public String showAcceptedOrders(HttpSession session, Model model) {
        UUID userId = (UUID) session.getAttribute("userId");
        if (userId == null) {
            return "redirect:/login";
        }
        List<OrderEntity> orders = orderService.findAcceptedOrdersByUserId(userId);
        model.addAttribute("orders", orders);
        return "show-accepted-orders";
    }

    @RequestMapping(value = "/cancel-order", method = RequestMethod.POST)
    public String cancelOrder(@RequestParam("orderId") UUID orderId, RedirectAttributes redirectAttributes) {
        try {
            orderService.deleteOrder(orderId);
            redirectAttributes.addFlashAttribute("message", "Order successfully canceled!");
        } catch (IllegalStateException e) {
            redirectAttributes.addFlashAttribute("errorMessage", e.getMessage());
        }
        return "user-menu";
    }







}
