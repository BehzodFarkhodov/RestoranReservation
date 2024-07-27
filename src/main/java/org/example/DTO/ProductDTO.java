package org.example.DTO;

import jakarta.persistence.ManyToOne;
import lombok.Data;
import org.example.entity.RestaurantEntity;

import java.util.UUID;

@Data
public class ProductDTO {
    private String name;
    private String description;
    private double price;
    private Integer quantity;
    private String imagePath;
    @ManyToOne
    private UUID restaurantId;


}
