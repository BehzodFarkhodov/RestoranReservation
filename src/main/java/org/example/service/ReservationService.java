package org.example.service;

import org.example.entity.ReservationEntity;
import org.example.entity.UserEntity;
import org.example.repository.ReservationRepo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
public class ReservationService extends BaseService<ReservationEntity, ReservationRepo> {

    public ReservationService(ReservationRepo repository) {
        super(repository);
    }

    @Transactional
    public ReservationEntity save(ReservationEntity reservation) {
        return repository.save(reservation);
    }

    public List<ReservationEntity> findReservationsByUser(UserEntity user) {
        if (user != null && user.getId() != null) {
            return repository.findByUserId(user.getId());
        }
        return List.of();
    }

    public List<ReservationEntity> findByRestaurantId(UUID restaurantId) {
        return repository.findByRestaurantId(restaurantId);
    }

}
