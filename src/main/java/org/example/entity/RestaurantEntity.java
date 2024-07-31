package org.example.entity;

import jakarta.persistence.*;
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
//    @OneToMany(mappedBy = "restaurant",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @OneToMany
    @ToString.Exclude
    private List<ProductEntity> menu;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private UserEntity owner;

}
