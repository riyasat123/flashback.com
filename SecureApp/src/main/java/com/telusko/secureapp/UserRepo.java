package com.telusko.secureapp;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface UserRepo extends JpaRepository<MyUser, Integer> {
	
	MyUser findByUsername(String username);

	@Query("from MyUser where username = ?1 and email = ?2")
	List<MyUser> findByUserexist(String username, String email);

	@Transactional
	@Modifying
	@Query("update MyUser set password = ?2 where username = ?1")
	void updatePass(String string, String string2);
	
}
