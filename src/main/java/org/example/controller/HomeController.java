package org.example.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@AllArgsConstructor
public class HomeController {


    @RequestMapping("/")
    public String start() {
        return "index";
    }
}
