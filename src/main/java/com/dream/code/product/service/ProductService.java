package com.dream.code.product.service;

import com.dream.code.product.model.Category;

import java.util.List;

public interface ProductService {

    public List<Category> getKeywords(String categoryName);
}
