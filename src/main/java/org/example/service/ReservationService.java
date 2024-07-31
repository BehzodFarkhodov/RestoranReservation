package org.example.service;

import org.example.entity.OrderEntity;
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



    public ReservationEntity findById(UUID id) {
        return repository.findById(id);
    }
    public List<ReservationEntity> findAcceptedReservationsByUserId(UUID userId) {
        return repository.findAcceptedReservationsByUserId(userId);
    }


    @Transactional
    public void deleteOrder(UUID id) {
        ReservationEntity reser = findById(id);
        if (reser != null && !"ACCEPTED".equals(reser.getStatus())) {
            repository.deleteById(id);
        } else if ("ACCEPTED".equals(reser.getStatus())) {
            throw new IllegalStateException("Cannot cancel an accepted reservation");
        }
    }








}
