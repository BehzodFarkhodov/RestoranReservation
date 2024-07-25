package org.example.repository;

import org.example.entity.BaseEntity;
import org.example.entity.ReservationEntity;
import org.example.entity.RestaurantEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

@Repository
public class ReservationRepo extends BaseRepo<ReservationEntity> {
    public ReservationRepo() {
        this.type = ReservationEntity.class;
    }

}
