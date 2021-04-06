package com.james.stgeorges.post;

import com.james.stgeorges.user.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface PostRepository extends JpaRepository<Post, UUID> {

    public Post findByUser(User user);
    @Query("select p from Post p where (:category is null or p.category = :category) AND (:status is null or p.status = :status)" +
            " AND (:keyword is null or p.title like %:keyword% or p.description like %:keyword% )")
    public Page<Post> findByCategoryAndStatusAndKeyword(Post.ECategories category, Post.EPostStatus status,String keyword, Pageable page);
    public Page<Post> findByUser(User user, Pageable page);
}
