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
public class ProductEntity extends BaseEntity {
    private String foodName;
    private String foodDescription;
    private double price;
    private Integer quantity;
    private String imagePath;
    @ManyToOne
    private RestaurantEntity restaurant;
}

