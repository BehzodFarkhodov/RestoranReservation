package org.example.controller;

import org.example.entity.OrderEntity;

import org.example.service.OrderService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private UserService userService;


    @RequestMapping("/save")
    public String savePage() {
        return "order";
    }


    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute OrderEntity order, Model model) {
        orderService.save(order);
        List<OrderEntity> orderEntities = orderService.findAll();
        model.addAttribute("orders", orderEntities);
        return "order";
    }

}
