package org.example.service;

import org.example.entity.ReservationEntity;
import org.example.repository.ReservationRepo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
public class ReservationService extends BaseService<ReservationEntity, ReservationRepo> {

    public ReservationService(ReservationRepo repository) {
        super(repository);
    }
    @Transactional
    public ReservationEntity save(ReservationEntity reservation) {
        return repository.save(reservation);
    }

}
