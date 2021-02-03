package com.telusko.secureapp;


import javax.persistence.Entity;
import javax.persistence.Id;



@Entity
public class GetSetGo {
	@Id
    private String ID;
	private String UserID;
	private String Category;
	private String Summary;
	private String Story;
	private String Likecount;
	private String Commentcount;

	
	public String getCommentcount() {
		return Commentcount;
	}
	public void setCommentcount(String commentcount) {
		Commentcount = commentcount;
	}
	public String getLikecount() {
		return Likecount;
	}
	public void setLikecount(String likecount) {
		Likecount = likecount;
	}
	public String getSummary() {
		return Summary;
	}
	public void setSummary(String summary) {
		Summary = summary;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		UserID = userID;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	public String getStory() {
		return Story;
	}
	public void setStory(String story) {
		Story = story;
	}
	@Override
	public String toString() {
		return "GetSetGo [ID=" + ID + ", UserID=" + UserID + ", Category=" + Category + ", Summary=" + Summary
				+ ", Story=" + Story + ", Likecount=" + Likecount + ", Commentcount=" + Commentcount + "]";
	}
	
			
}

