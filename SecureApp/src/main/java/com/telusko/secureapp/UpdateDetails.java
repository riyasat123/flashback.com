package com.telusko.secureapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UpdateDetails {
	
	@Autowired
	UserRepo reps;
	
	void updatePass(String string3, String string4) {
		
		reps.updatePass(string3,string4);
		
	}

}
