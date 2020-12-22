package com.telusko.secureapp;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.mail.MessagingException;
import javax.transaction.Transactional;

import org.apache.tomcat.jni.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {
	
	@Autowired
	private UserRepo repo;
	
	@Autowired
	private PostRepo postrepo;
	
	@Autowired
	private BCryptPasswordEncoder bcrpt;
	
	@Autowired
	private MailSenderProvide email;
	
	@Autowired
	private MyUser superID;
	
		
	@RequestMapping(value = {"/","/home"})
	public String home(ModelMap map){
		 map.addAttribute("post",postrepo.findAllByOrderByIDDesc());
		 map.addAttribute("home",true);
		 map.addAttribute("title","home Page");
		 return "MasterPage";
		 
	}
	
	@RequestMapping(value = {"/Category"})
	public String URL(){

		 return "redirect:/home";
		 
	}


	@RequestMapping("/login")
	public String loginpage() {
		
		return "UserLogin";
	}
	
	@RequestMapping("/forgotPassword/UserDetails")
	public String forgotpass() {
		
		return "forgotPassword";
	}
	
	@RequestMapping("/forgotPassword/OTP")
	public String OTP(MyUser myuser, ModelMap mp) throws MessagingException{
		 List<MyUser> Use = repo.findByUserexist(myuser.getUsername(), myuser.getEmail());
		 if(Use.size() == 1) {
		 superID.setUsername(myuser.getUsername());
		 Random r = new Random();
		 int random= r.nextInt(8999)+1000;
		// email.send(myuser.getEmail(),"Password Reset","OTP: "+random);
		 mp.addAttribute("otp", random);
		 return "OTPpage";
		 }
		 else
			 mp.addAttribute("errorForForgtpass", true);
			 return "forgotPassword";
	}
	

	@RequestMapping("/forgotPassword/updatepassword")
	public String confirmOTP() {	
	return "updatepassword";
	}
	
	
	@RequestMapping("/forgotPassword/updatepass")
	public String riyaztg(@RequestParam("password") String newpass) {
	repo.updatePass(superID.getUsername(),bcrpt.encode(newpass));
	return "redirect:/login";
	}
	
	
	@RequestMapping("/logout-success")
	public String home2() {
		return "redirect:/login";
	}
	
	@RequestMapping("/SignIn")
	public String SignIN() {
		return "SignIn";
	}
	
	@RequestMapping("/aboutUs")
	public ModelAndView AboutUs() {
		ModelAndView mb = new ModelAndView("MasterPage");
		mb.addObject("aboutUs",true);
		mb.addObject("title","aboutUs Page");
		return mb;
	}	
	
	
	@RequestMapping("/SignIn/RegisterOTP")
	public String home4(MyUser user, ModelMap mp) {
		MyUser Use = repo.findByUsername(user.getUsername());
		if(Use == null) {
		String bcrptPass = bcrpt.encode(user.getPassword());
		user.setPassword(bcrptPass);
		superID = user;
		Random r = new Random();
		int random= r.nextInt(8999)+1000;
		// email.send(user.getEmail(),"User Confirmation ","OTP: "+random);
		mp.addAttribute("otp", random);
		return "SignInOTP";
		}
		else {
			mp.addAttribute("error", true);
			mp.addAttribute("useridtaken", Use.getUsername());
			return "SignIn";
		}
	}
	
	@RequestMapping("/SignIn/RegisterOTP/confirmSignInOTP")
	public String confirmSignInOTP() {
						
		   repo.save(superID);
		   System.out.println(repo.save(superID));
		   return "redirect:/login";
		
	}
	
	
	@RequestMapping("/MyAccount")
	public ModelAndView MyAccountPage() {
		
		ModelAndView mb = new ModelAndView("MasterPage");
		mb.addObject("post",postrepo.findByUserID(SecurityContextHolder.getContext().getAuthentication().getName()));
		mb.addObject("UserID",SecurityContextHolder.getContext().getAuthentication().getName());
		mb.addObject("name",repo.findByUsername(SecurityContextHolder.getContext().getAuthentication().getName()));
		mb.addObject("account",true);
		mb.addObject("title","MyAccount Page");
		return mb;
	}	
	
	@RequestMapping("/MyAccount/editProfile")
	public ModelAndView EditProfile() {
		ModelAndView mb = new ModelAndView("MasterPage");
		mb.addObject("UserID",SecurityContextHolder.getContext().getAuthentication().getName());
		mb.addObject("edit",true);
		mb.addObject("title","Edit Profile Page");
		return mb;
	}	
	
	@RequestMapping("/MyAccount/SelectPhoto")
	public String SelectPhoto(@RequestParam("images") MultipartFile images) {
	   
		 String path = "D:\\riyaz\\STS2\\workspalce\\SecureApp\\src\\main\\webapp\\assets\\images\\";
		 Path p = Paths.get(path+SecurityContextHolder.getContext().getAuthentication().getName());
		 if(!Files.exists(p)) {
			 try {
				 Files.createDirectory(p);
				 System.out.println("Directory Created Successfuly ");
			 }
			 catch(Exception e){
				 System.out.println(e);
			 }
		 }
		 
		 path=String.valueOf(p.toString()+"\\"+(SecurityContextHolder.getContext().getAuthentication().getName())+".jpg");
		 System.out.println(path);
		 File imageFile= new File(path);
		 
		 if(!images.isEmpty()) {
			 try {
				 byte buffer[]=images.getBytes();
				 FileOutputStream fos = new FileOutputStream(imageFile);
				 BufferedOutputStream bos = new BufferedOutputStream(fos);
				 bos.write(buffer);
				 bos.close();
				 
			 }
			 catch(Exception e) {
				 System.out.println(e);
			 }
		 }
		
		
		return "redirect:/MyAccount";
	}	
	
	@RequestMapping("/MyAccount/StoryWriting")
	public ModelAndView StoryWriting() {
		ModelAndView mb = new ModelAndView("MasterPage");
		mb.addObject("story",true);
		mb.addObject("title","Flashback Writting Page");
		return mb;
	}	
	
	
	@RequestMapping(value= "/MyAccount/submit", method = RequestMethod.POST)
	public String Submit(GetSetGo gs) {
		 
		SimpleDateFormat dt = new SimpleDateFormat("yyyyMMddHHmmssms");
		Date date=new Date();
		 gs.setID(dt.format(date)+SecurityContextHolder.getContext().getAuthentication().getName());
	     gs.setUserID(SecurityContextHolder.getContext().getAuthentication().getName());
		 postrepo.save(gs);
		 
		 return "redirect:/home";
		
	}
	
	
	@RequestMapping(value="/deleteItem/{GetSetGo.ID}",method = RequestMethod.GET)
	public String deleteItem(@PathVariable("GetSetGo.ID") String ID) {
		
		postrepo.deleteById(ID);
		return "redirect:/MyAccount";
	}	
	
	
	@RequestMapping(value="/Category/{GetSetGo.category}",method = RequestMethod.GET)
	public String TypeOfContent(@PathVariable("GetSetGo.category") String category, ModelMap map) {
		 map.addAttribute("post",postrepo.findByCategory(category));
		 map.addAttribute("cateGoryFilter",true);
		 map.addAttribute("title",category);
		 return "MasterPage";
	}	
	
	
	
}
