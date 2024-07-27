package org.example.DTO;

import lombok.Data;
import org.example.enumertaror.RestaurantType;

@Data
public class RestaurantDTO {
    private String name;
    private String address;
    private String location;
    private String phone;
    private RestaurantType type;
    private String picturePath;
}
