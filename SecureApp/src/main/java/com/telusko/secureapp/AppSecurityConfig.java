package com.telusko.secureapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class AppSecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
	private UserDetailsService userDetailsService;
	@Bean
	public AuthenticationProvider authProvider() {
		 
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		provider.setUserDetailsService(userDetailsService);
		provider.setPasswordEncoder(new BCryptPasswordEncoder());
		
		return provider;
		
	}
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http
			//Login
		   .csrf().disable()
		   .authorizeRequests()
		   .antMatchers("/assets/**").permitAll()
		   .antMatchers("/login").permitAll()
		   .antMatchers("/forgotPassword/UserDetails").permitAll()
		   .antMatchers("/forgotPassword/OTP").permitAll()
		   .antMatchers("/forgotPassword/updatepassword").permitAll()
		   .antMatchers("/forgotPassword/updatepass").permitAll()
		   .antMatchers("/SignIn").permitAll()
		   .antMatchers("/SignIn/RegisterOTP").permitAll()
		   .antMatchers("/SignIn/RegisterOTP/confirmSignInOTP").permitAll()
		   .anyRequest().authenticated()
		   .and()
		   .formLogin()
		   .loginPage("/login").permitAll()
		   .and()
		   //Logout
		   .logout().invalidateHttpSession(true)
		   .clearAuthentication(true)
		   .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		   .logoutSuccessUrl("/logout-success").permitAll();
		
	}
	
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
	    return new BCryptPasswordEncoder();
	}
	
	

}
