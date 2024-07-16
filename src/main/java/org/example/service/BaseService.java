package org.example.service;

import org.example.entity.BaseEntity;
import org.example.repository.BaseRepo;

import java.util.UUID;

public class BaseService <T extends BaseEntity,R extends BaseRepo<T>> {
    R repository;

    public BaseService(R repository) {
        this.repository = repository;
    }

    public T findById(UUID id) {
        return repository.findById(id);
    }

    public void delete(UUID id) {
        repository.delete(id);
    }
}
