package org.example.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.example.entity.BaseEntity;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

public class BaseRepo <T extends BaseEntity> {
    protected Class<T> type;
@PersistenceContext
    protected EntityManager manager;



    @Transactional
    public void delete(UUID id){
        manager.remove(id);
    }
     @Transactional
    public T findById(UUID id){
        return manager.find(type,id);
    }

}
