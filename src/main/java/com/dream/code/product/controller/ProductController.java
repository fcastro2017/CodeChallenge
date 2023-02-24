package com.dream.code.product.controller;

import com.dream.code.product.model.Category;
import com.dream.code.product.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@CrossOrigin("*")
@RestController
@RequestMapping("/api/v1/products")
public class ProductController {

    @Autowired
    ProductService productService;

    @GetMapping
    public List<Category> getKeywords(@RequestParam String categoryName) {
        List<Category> categories = productService.getKeywords(categoryName);
        return categories;
    }
}
