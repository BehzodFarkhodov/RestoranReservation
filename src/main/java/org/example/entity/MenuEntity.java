package org.example.entity;

import jakarta.persistence.Table;
import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Table(name = "menu")
@ToString
@Builder
public class MenuEntity extends BaseEntity{
private String foodName;
private String foodDescription;
private double price;
}
