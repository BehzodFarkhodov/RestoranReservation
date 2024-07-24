package org.example.service;

import org.example.entity.ReservationEntity;
import org.example.repository.ReservationRepo;
import org.springframework.transaction.annotation.Transactional;

public class ReservationService extends BaseService<ReservationEntity, ReservationRepo> {

    public ReservationService(ReservationRepo repository) {
        super(repository);
    }
    @Transactional
    public ReservationEntity save(ReservationEntity reservation) {
        return repository.save(reservation);
    }



}
