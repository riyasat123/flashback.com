package com.telusko.secureapp;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PostRepo extends JpaRepository<GetSetGo, String> {
	
	List<GetSetGo> findAllByOrderByIDDesc();

	@Query("from GetSetGo where UserID = ?1 order by ID desc")
	List<GetSetGo> findByUserID(String userId);

	@Query("from GetSetGo where Category = ?1 order by ID desc")
	List<GetSetGo> findByCategory(String category); 


}
