package org.example.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.*;
import org.example.enumertaror.RestaurantType;

import java.util.List;

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
    private String picturePath;
    @OneToMany(mappedBy = "restaurant",cascade = CascadeType.ALL)
    private List<MenuEntity> menu;

}
