package com.telusko.secureapp;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface LikeRepo extends JpaRepository<LikeEntity, String> {

	@Query("select count(*) from LikeEntity where userID = ?1 and postID = ?2")
	int findByLike(String uid, String pid);
	
	@Query("select count(*) from LikeEntity where postID = ?1")
	int postlike(String pid);
	
	@Query("select DISTINCT postID from LikeEntity")
	List<String> LikeCountGroup();
	
	@Query("select count(*) from LikeEntity where postID = ?1")
	String Findcount(String pid);
	
	@Transactional
	@Modifying
	@Query("delete from LikeEntity where userID = ?1 and postID = ?2")
	void LikeRemove(String uid, String pid);
	
	@Query("select postID from LikeEntity where userID = ?1")
	List<String> findByUserID(String uid);
}
