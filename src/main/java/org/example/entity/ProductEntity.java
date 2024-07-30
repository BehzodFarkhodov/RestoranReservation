package org.example.entity;

import jakarta.persistence.*;
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
    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "restaurant_id", nullable = false)
    private RestaurantEntity restaurant;
    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "user_id", nullable = false)
    private UserEntity owner;
}



