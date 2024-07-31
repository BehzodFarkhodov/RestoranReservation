package org.example.service;

import org.example.entity.CommentEntity;
import org.example.repository.CommentRepo;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class CommentService extends BaseService<CommentEntity, CommentRepo> {
    public CommentService(CommentRepo repository) {
        super(repository);
    }


    public void saveComment(CommentEntity comment) {
        repository.save(comment);
    }


    public List<CommentEntity> getAllComments() {
        return repository.getAllComments();
    }


    public void deleteComment(UUID id ) {
        repository.deleteComment(id);
    }


}


