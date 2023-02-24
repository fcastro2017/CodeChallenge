package com.dream.code.product.service;

import com.dream.code.product.model.Category;
import com.dream.code.product.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    CategoryRepository repository;

    @Override
    public List<Category> getKeywords(String categoryName) {
        return repository.getKeywords(categoryName);
    }
}


