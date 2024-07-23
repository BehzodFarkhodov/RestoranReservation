package org.example.controller;

import org.example.entity.ProductEntity;
import org.example.service.FileService;
import org.example.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;


@Controller
public class ProductController {


    @Autowired
    private ProductService productService;

    @Autowired
    private FileService fileService;


    @RequestMapping("/create-product")
    public String save() {
        return "create-product";
    }

    @RequestMapping(value = "/create-product", method = RequestMethod.POST)
    public String create(@ModelAttribute ProductEntity product,
                         @RequestParam("picture") MultipartFile file) {

        try {
            if (!file.isEmpty()) {
                String imagePath = fileService.saveFile(file, true);
                product.setImagePath(imagePath);
            }
            productService.save(product);

        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return "restaurants";

    }


}
