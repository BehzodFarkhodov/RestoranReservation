package org.example.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.*;
import org.example.enumertaror.RestaurantType;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Table(name = "restaurant")
@Entity
@ToString
@Builder
public class RestaurantEntity extends BaseEntity {
    private String name;
    private String address;
    private String location;
    private String phone;
    private RestaurantType type;


}
