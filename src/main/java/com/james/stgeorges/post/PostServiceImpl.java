package com.james.stgeorges.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class PostServiceImpl {
    @Autowired
    PostRepository postRepository;

    public Post save(Post model)throws Exception{
        model= postRepository.save(model);
        return model;
    }

    public Post get(UUID id) throws Exception{
        Post post = postRepository.getOne(id);
        return post;
    }

    public Page<Post> search( Post.ECategories categories,String keyword, Pageable page) throws Exception{
        return postRepository.findByCategoryAndStatusAndKeyword(categories, Post.EPostStatus.PUBLISH,keyword,page);
//        return postRepository.findAll(page);
    }
}
