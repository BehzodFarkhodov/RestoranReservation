package org.example.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.example.entity.BaseEntity;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

public class BaseRepo <T extends BaseEntity> {
    protected Class<T> type;
@PersistenceContext
    protected EntityManager manager;



    @Transactional
    public void delete(UUID id){
    manager.remove(manager.find(type, id));
    }

    @Transactional
    public T findById(UUID id) {
        return manager.find(type, id);
    }

    @Transactional
    public T save(T entity){
        manager.persist(entity);
        return entity;
    }

    @Transactional
    public List<T> findAll() {
        return manager.createQuery("from " + type.getName(), type).getResultList();
    }


}
