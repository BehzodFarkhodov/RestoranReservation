package org.example.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
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
@Table(name = "orders")
public class OrderEntity extends BaseEntity{
    @ManyToOne
    private UserEntity user;
    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private ProductEntity product;
    private Integer quantity;
    private String status;
}
