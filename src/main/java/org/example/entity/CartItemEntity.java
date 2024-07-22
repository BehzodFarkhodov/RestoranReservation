package org.example.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "cart_items")
public class CartItemEntity extends BaseEntity {
    @ManyToOne
    private CartEntity cart;
    @ManyToOne
    private ProductEntity product;
    private Integer quantity;
}
