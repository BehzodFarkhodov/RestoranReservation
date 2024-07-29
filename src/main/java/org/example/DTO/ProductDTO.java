package org.example.DTO;

import jakarta.persistence.ManyToOne;
import lombok.Data;


import java.util.UUID;

@Data
public class ProductDTO {
    private String foodName;
    private String foodDescription;
    private double price;
    private Integer quantity;
    private String imagePath;
    @ManyToOne
    private UUID restaurantId;


}
