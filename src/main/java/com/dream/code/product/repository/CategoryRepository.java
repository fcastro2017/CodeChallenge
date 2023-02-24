package com.dream.code.product.repository;

import com.dream.code.product.model.Category;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepository extends CrudRepository<Category,Integer>{

    @Query(value="select * from `products`.`category` where category_name like %?1%",nativeQuery = true)
    public List<Category> getKeywords(String categoryName);

}
