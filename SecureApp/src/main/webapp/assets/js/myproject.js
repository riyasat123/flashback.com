

//---- Active Menu -----
//window.onload = function() {
//	var a = document.title;
//	if(a == "aboutUs Page"){
//	document.getElementById("idbount").style.color = "black";
//	}
//	else if(a == "MyAccount Page" || a == "Edit Profile Page" || a == "Flashback Writting Page"){
//		document.getElementById("idmyaccount").style.color = "black";
//	}
//	else if(a == "home Page"){
//		document.getElementById("idhome").style.color = "black";		
//	}
//	else if(a == "love" || a == "Horror" || a == "Success" || a == "Motivational" || a == "Secrets" || a == "Lust Story" || a == "Depression" || a == "Others"){
//		document.getElementById("navbarDropdown").style.color = "black";
//	}
//}
window.onload = function() {
	var a = document.title;
	if(a == "aboutUs Page"){
	document.getElementById("idbount").style.color = "black";
	}
	else if(a == "MyAccount Page" || a == "Edit Profile Page" || a == "Flashback Writting Page"){
		document.getElementById("idmyaccount").style.color = "black";
	}
	else if(a == "home Page"){
		document.getElementById("idhome").style.color = "black";
	}
	else if(a == "love" || a == "Horror" || a == "Success" || a == "Motivational" || a == "Secrets" || a == "Lust Story" || a == "Depression" || a == "Others"){
		document.getElementById("navbarDropdown").style.color = "black";
	}
}


//---- StoryWriting -----
function charcounts(){
var len= document.getElementById('SummaryID').value.length;
document.getElementById('countchar').innerHTML=len;
}

//---- EditProfile-----
var loadFile = function(event) {
	var image = document.getElementById('output');
	image.src = URL.createObjectURL(event.target.files[0]);
}; 

   
   //---- SignInOTP ----
   
function checkOTP(form){
	   
	   var sysotp1 = form.sysotp.value; 
	   var userotp1 = form.userotp.value;
		
		
		// If Not same return False.	 
		 if (sysotp1 != userotp1) { 
			document.getElementById("errorOTP").innerHTML="*OTP was wrong check mail and try again";
			document.getElementById("userotpID").style.borderColor = "red";
			document.getElementById("userotpID").style.borderWidth = "1px";
			return false; 
		} 
	   
	   
}


//---- StoryWriting ----

function poststory(form){
	   
	   var Story1 = form.Story.value; 
	   var Summary1 = form.Summary.value;
	   var Category1 = form.Category.value;
		
		
		// empty and only space value not accepted 	 
	   if(/^[\s\t]+$/.test(Story1) || Story1 == ""){
			 document.getElementById("ErrorStoryID").innerHTML="*Story should not be empty";
			 document.getElementById("StoryID").style.borderColor = "red";
			 document.getElementById("StoryID").style.borderWidth = "1px";
	    	  return false;
	      }
	   
	   if(!/^[\s\t]+$/.test(Story1) && Story1 != ""){
			 document.getElementById("ErrorStoryID").innerHTML="";
			 document.getElementById("StoryID").style.borderColor = "green";
			 document.getElementById("StoryID").style.borderWidth = "1px";
	      }
	   
	   
	// empty and only space value not accepted 	 
	   if(/^[\s\t]+$/.test(Summary1) || Summary1 == ""){
			 document.getElementById("ErrorSummaryID").innerHTML="*Summary should not be empty";
			 document.getElementById("SummaryID").style.borderColor = "red";
			 document.getElementById("SummaryID").style.borderWidth = "1px";
	    	  return false;
	      }
	   
	   if(!/^[\s\t]+$/.test(Summary1) && Summary1 != ""){
			 document.getElementById("ErrorSummaryID").innerHTML="";
			 document.getElementById("SummaryID").style.borderColor = "green";
			 document.getElementById("SummaryID").style.borderWidth = "1px";
	      }
	   
	// empty and only space value not accepted 	 
	   if(Category1 == ""){
			 document.getElementById("ErrorCategoryID").innerHTML="*Select type of category";
	    	  return false;
	      }
	   
	   if(Category1 != ""){
			 document.getElementById("ErrorCategoryID").innerHTML="";
	      }
	   
	   
	   
}


//---- updatepassword ----

function updatePassword(form) { 
	
	password1 = form.password.value; 
	password2 = form.confirmpassword.value;
	
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


  // like function

function likedfun(uid,pid){
	console.log(uid+","+pid);
	var iii = "a"+pid;
	console.log(iii);
	var stc = document.getElementById(iii).style.color;
	var count = parseInt(document.getElementById(pid).innerHTML);
	if(stc != "blue"){
	document.getElementById(pid).innerHTML = count + 1;
	document.getElementById(iii).style.color = "blue";
	console.log(count +1 );
	}else{
		document.getElementById(pid).innerHTML = count - 1;
		document.getElementById(iii).style.color = "darkorange";
		console.log(count -1 );
	}
	
	var d={
		uid: uid,
		pid: pid,
		operation: 'like'
	}
	
	$.ajax({
		type:'POST',
		url: "likedServlet",
		data: d,
		success: function(data){
			$('#like-section').html(data)
		},
		error: function (jqXHR, textStatus, errorThrown){
			console.log(data)
		}
	})
	
}



// Comment function

function commentfun(uid,pid){
	console.log("comment"+uid+","+pid);
	var iii = "b"+pid;
	var jjj = "c"+pid;
	var comment = document.getElementById(iii).value;
	console.log(iii);
	
	var d={
		uid: uid,
		pid: pid,
		comment: comment,
		operation: 'comment'
	}
	
	$.ajax({
		type:'POST',
		url: "commentServlet",
		data: d,
		success: function(data){
			console.log(data[3].postID)
		},
		error: function (jqXHR, textStatus, errorThrown){
			//console.log(data)
		}
	})
	
}


//Display Comment function

//function displaycommentfun(pid){
//	var u = "u"+pid;
//	var c = "c"+pid;
//	
//	var d={
//		pid: pid
//	}
//	
//	$.ajax({
//		type:'POST',
//		url: "displaycommentServlet",
//		data: d,
//		success: function(data){
//			console.log(data)
//			for(var i=0; i<data.length; i++){
//		         console.log(data);
//				document.getElementById(i).innerHTML = data[i].commentTime ;
//				
//				//document.getElementById().innerHTML="commentuser clicked";
//				//document.getElementById("like-section").innerHTML="like-section clicked";
//			}
//		},
//		error: function (jqXHR, textStatus, errorThrown){
//			console.log(data)
//		}
//	})
//	
//}
   
   