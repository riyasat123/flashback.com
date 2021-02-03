package com.telusko.secureapp;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class LikeEntity {
	
	@Id
	private String likeTime;
	private String userID;
    private String postID;
    
	public String getLikeTime() {
		return likeTime;
	}
	public void setLikeTime(String likeTime) {
		this.likeTime = likeTime;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getPostID() {
		return postID;
	}
	public void setPostID(String postID) {
		this.postID = postID;
	}
	@Override
	public String toString() {
		return "LikeEntity [likeTime=" + likeTime + ", userID=" + userID + ", postID=" + postID + "]";
	}

}
