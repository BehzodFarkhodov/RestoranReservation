package org.example.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "carts")
public class CartEntity extends BaseEntity{
    @ManyToOne
    private UserEntity user;
    @OneToMany(mappedBy = "cart",cascade = CascadeType.ALL)
    private List<CartItemEntity> items;
}
