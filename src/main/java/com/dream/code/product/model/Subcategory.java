package com.dream.code.product.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "subcategory")
public class Subcategory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "category_name")
    private int idHierarchy;
    @Column(name = "hierarchy_name")
    private String hierarchyName;
    @ManyToOne
    @JoinColumn(name="id_category")
    private Category category;

}
