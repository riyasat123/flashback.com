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
		return "GetSetGo [UserID=" + UserID + ", Category=" + Category + ", Story=" + Story + "]";
	}
		
			
}

