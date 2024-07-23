package org.example.service;

import org.example.entity.RestaurantEntity;
import org.example.repository.RestaurantRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RestaurantService extends BaseService<RestaurantEntity, RestaurantRepo> {

    public RestaurantService(RestaurantRepo repository) {
        super(repository);
    }

    @Autowired
    private RestaurantRepo repository;
   public void save(RestaurantEntity entity) {
       repository.save(entity);
   }

   public List<RestaurantEntity> getAll() {
       return repository.findAll();
   }

    public List<RestaurantEntity> searchRestaurants(String location, String name, String address) {
        return repository.findByFilters(location, name, address);
    }

}
