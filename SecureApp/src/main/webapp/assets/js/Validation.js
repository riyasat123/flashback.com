
function checkPassword(form) { 
				
				name1 = form.name.value;
				username1 = form.username.value;
				email1 = form.email.value;
				password1 = form.password.value; 
				password2 = form.confirmpassword.value;
				
				// words and space in medel 
				 if(!/^[a-zA-Z]+\s?[a-zA-Z]+?$/.test(name1)){
					 document.getElementById("NameError").innerHTML="*Allow Only Aa-Zz Latters";
					 document.getElementById("idname").style.borderColor = "red";
					 document.getElementById("idname").style.borderWidth = "1px";
			    	  return false;
			      }
				
				 if(/^[a-zA-Z]+\s?[a-zA-Z]+?$/.test(name1)){
					 document.getElementById("NameError").innerHTML="";
					 document.getElementById("idname").style.borderColor = "lightgreen";
					 document.getElementById("idname").style.borderWidth = "2px";
			      }
				 
				 // words,number and Underscore 
				 if(!/^[\w@$&]+$/.test(username1)){
					 document.getElementById("UsernameError").innerHTML="*Allow Special char Only( @ _ $ & )";
					 document.getElementById("idusername").style.borderColor = "red";
					 document.getElementById("idusername").style.borderWidth = "1px";
			    	  return false;
			      }
				 
				 if(/^[\w@$&]+$/.test(username1)){
					 document.getElementById("UsernameError").innerHTML="";
					 document.getElementById("idusername").style.borderColor = "lightgreen";
					 document.getElementById("idusername").style.borderWidth = "2px";
					 
			      }
				 
				 if(username1.length <6){
					 document.getElementById("UsernameError").innerHTML="*atleast 6 Digit UserID)";
					 document.getElementById("idusername").style.borderColor = "red";
					 document.getElementById("idusername").style.borderWidth = "1px";
			    	  return false;
			      }
				 
			
				 //email validation
				 if(!/^([a-z\d\.-]+)@([a-z\d-]+)\.([a-z]{2,8})(\.[a-z]{2,8})?$/.test(email1)){
			    	  document.getElementById("EmailError").innerHTML="*Wrong Email ID";
			    	  document.getElementById("idemail").style.borderColor = "red";
			    	  document.getElementById("idemail").style.borderWidth = "1px";
			    	  return false;
			      }
				 
				 if(/^([a-z\d\.-]+)@([a-z\d-]+)\.([a-z]{2,8})(\.[a-z]{2,8})?$/.test(email1)){
			    	  document.getElementById("EmailError").innerHTML="";
			    	  document.getElementById("idemail").style.borderColor = "lightgreen";
					  document.getElementById("idemail").style.borderWidth = "2px";
			      }
				
				 	
				// words,number and Special character 
			      if(!/^[\w&!#@]+$/.test(password1)){
			    	  document.getElementById("PasswordError").innerHTML="*Allow Special char Only( @ _ $ & )";
			    	  document.getElementById("idpassword").style.borderColor = "red";
			    	  document.getElementById("idpassword").style.borderWidth = "1px";
			    	  return false;
			      }
			      if(/^[\w&!#@]+$/.test(password1)){
			    	  document.getElementById("PasswordError").innerHTML="";
			    	  document.getElementById("idpassword").style.borderColor = "lightgreen";
					  document.getElementById("idpassword").style.borderWidth = "2px";
			      }
				
			      if(password1.length <6){
			    	  document.getElementById("PasswordError").innerHTML="*atleast 6 Digit Password";
			    	  document.getElementById("idpassword").style.borderColor = "red";
			    	  document.getElementById("idpassword").style.borderWidth = "1px";
			    	  return false;
			      }
			      
			    
				// If Not same return False.	 
				 if (password1 != password2) { 
					document.getElementById("ConfirmpasswordError").innerHTML="*Password doesn't Match!";
					document.getElementById("idconfirmpassword").style.borderColor = "red";
					document.getElementById("idconfirmpassword").style.borderWidth = "1px";
					return false; 
				} 
				
				 if (password1 == password2) { 
						document.getElementById("ConfirmpasswordError").innerHTML="";
						document.getElementById("idconfirmpassword").style.borderColor = "lightgreen";
						document.getElementById("idconfirmpassword").style.borderWidth = "2px";
					} 
				
				    

			} 
