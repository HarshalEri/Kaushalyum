package com.kaushalyum.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kaushalyum.model.LoginModel;
import com.kaushalyum.model.UserModel;
import com.kaushalyum.services.LoginService;


@Controller
public class HomeController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/aboutus")
	public String goToAboutUsPage(){
		System.out.println("In controller");
		return "aboutus";
	}
	
	@RequestMapping("/home")
	public String goHomePage(){
		return "home";
	}
	
	@RequestMapping("/login")
	public ModelAndView goLoginPage() {
		LoginModel login = new LoginModel();
		ModelAndView mav = new ModelAndView("login", "login", login);
		return mav;
	}
	
	@RequestMapping("/signin")  // validate login
	public String validateUser(Model model, LoginModel loginDetails) {
		System.out.println(loginDetails);
		boolean flag = loginService.validateLogin(loginDetails);
		model.addAttribute("user", loginDetails);
		if(flag)
			return "userpage";
		return "fail";
	}
	
	@RequestMapping("/registration")
	public ModelAndView goToRegistrationPage() {
		UserModel userDetails = new UserModel();
		ModelAndView mav = new ModelAndView("registration", "registration", userDetails);
		return mav;
	}
}
