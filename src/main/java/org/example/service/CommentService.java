package org.example.service;

import org.example.entity.CommentEntity;
import org.example.repository.CommentRepo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentService extends BaseService<CommentEntity, CommentRepo> {
    public CommentService(CommentRepo repository) {
        super(repository);
    }


    public void saveComment(CommentEntity comment) {
        repository.save(comment);
    }


    public List<CommentEntity> getAllComments() {
        return repository.findAll();
    }

}


