package com.dream.code.product.model;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "category")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "category_name")
    private String categoryName;
    @Column(name = "keyword")
    private String keyword;
    @OneToMany(mappedBy = "category",cascade=CascadeType.ALL)
    private List<Subcategory> subcategories;

}
