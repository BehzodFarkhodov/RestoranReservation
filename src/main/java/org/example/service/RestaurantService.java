    package org.example.service;

    import org.example.DTO.RestaurantDTO;
    import org.example.entity.RestaurantEntity;
    import org.example.entity.UserEntity;
    import org.example.enumertaror.RestaurantType;
    import org.example.repository.RestaurantRepo;
    import org.springframework.beans.factory.annotation.Autowired;
    import org.springframework.stereotype.Service;

    import java.util.List;
    import java.util.UUID;

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

        public void createRestaurant(RestaurantEntity restaurant, UserEntity user) {
            restaurant.setOwner(user);
            repository.save(restaurant);
        }



        public List<RestaurantEntity> findByUser(UserEntity user) {
            return repository.findByUser(user);
        }
        public List<RestaurantEntity> findAllByOwner(UUID userId) {
            return repository.findByOwnerId(userId);
        }

        public boolean deleteRestaurant(UUID restaurantId) {
            if (repository.hasProducts(restaurantId)) {
                return false;
            }
            repository.deleteById(restaurantId);
            return true;
        }


    }
