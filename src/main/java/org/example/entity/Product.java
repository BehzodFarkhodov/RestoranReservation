package org.example.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Table(name = "product")
@ToString
@Builder
@Entity
public class Product extends BaseEntity {
    private String foodName;
    private String foodDescription;
    private double price;
    private String imagePath;
    private Integer quantity;
    @ManyToOne
    private RestaurantEntity restaurant;
}

