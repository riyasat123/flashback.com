package com.telusko.secureapp;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CommentRepo extends JpaRepository<CommentEntity, String> {

	@Query("from CommentEntity")
	List<CommentEntity> CommentsDisplay();

} 
