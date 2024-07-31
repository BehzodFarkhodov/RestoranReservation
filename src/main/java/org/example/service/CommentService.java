package org.example.service;

import org.example.DTO.CommentDTO;
import org.example.entity.CommentEntity;
import org.example.repository.CommentRepo;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
public class CommentService extends BaseService<CommentEntity, CommentRepo> {
    public CommentService(CommentRepo repository) {
        super(repository);
    }
    @Autowired
    private CommentRepo commentRepo;


    public void saveComment(CommentEntity comment) {
        repository.save(comment);
    }


    public List<CommentEntity> getAllComments() {
        return repository.findAll();
    }

    public List<CommentDTO> getCommentsForRestaurant(UUID restaurantId) {
        List<CommentEntity> comments = commentRepo.findCommentsByRestaurantId(restaurantId);
        return comments.stream().map(comment -> {
            CommentDTO dto = new CommentDTO();
            dto.setUsernameOrEmail(comment.getUser().getUsername() != null ? comment.getUser().getUsername() : comment.getUser().getEmail());
            dto.setText(comment.getText());
            dto.setCreatedDate(comment.getCreatedDateTime());
            return dto;
        }).collect(Collectors.toList());
    }

}


