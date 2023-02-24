package com.dream.code.product.service;

import com.dream.code.product.ProductsApplication;
import com.dream.code.product.model.Category;
import com.dream.code.product.repository.CategoryRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.transaction.Transactional;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;


@ExtendWith(SpringExtension.class)
@Transactional
@SpringBootTest(classes = ProductsApplication.class)
class ProductServiceImplTest {

    @InjectMocks
    private ProductServiceImpl productService;

    @Mock
    CategoryRepository repository;

    @Test
    public void getKeywords(){
        when(repository.getKeywords(Mockito.any())).thenReturn(keywords());
        assertEquals(true,productService.getKeywords("Furniture").size()>0);

    }

    public List<Category> keywords(){

        List<Category> categoryList = new ArrayList<>();
        Category category1 = new Category();
        category1.setId(1);
        category1.setCategoryName("Furniture");
        category1.setKeyword("Furn");

        categoryList.add(category1);

        Category category2 = new Category();
        category2.setId(2);
        category2.setCategoryName("Electronics");
        category2.setKeyword("Elec");

        categoryList.add(category2);

        Category category3 = new Category();
        category3.setId(3);
        category3.setCategoryName("Home Appliances");
        category3.setKeyword("home");

        categoryList.add(category3);

        Category category4 = new Category();
        category3.setId(4);
        category3.setCategoryName("Major Appliances");
        category3.setKeyword("major");
        categoryList.add(category4);

        return categoryList;
    }


}