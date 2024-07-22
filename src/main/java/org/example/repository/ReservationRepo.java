package org.example.repository;

import org.example.entity.BaseEntity;
import org.example.entity.ReservationEntity;
import org.example.entity.RestaurantEntity;

public class ReservationRepo extends BaseRepo<ReservationEntity> {
    public ReservationRepo() {
        this.type = ReservationEntity.class;
    }

}
