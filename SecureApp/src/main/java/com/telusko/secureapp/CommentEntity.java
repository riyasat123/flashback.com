package com.telusko.secureapp;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class CommentEntity {
	
	@Id
	private String commentTime;
	private String userID;
    private String postID;
    private String Postcomment;
    
	public String getPostcomment() {
		return Postcomment;
	}
	public void setPostcomment(String postcomment) {
		Postcomment = postcomment;
	}
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
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
		return "CommentEntity [commentTime=" + commentTime + ", userID=" + userID + ", postID=" + postID + "]";
	}
}
