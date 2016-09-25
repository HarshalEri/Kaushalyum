package com.kaushalyum.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kaushalyum.model.LoginModel;
import com.kaushalyum.model.UserModel;
import com.kaushalyum.services.LoginService;
import com.kaushalyum.services.UserService;
import com.kaushalyum.validator.LoginValidator;


@Controller
public class HomeController {
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private LoginValidator validator;

	@InitBinder("registration")
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(validator);
	}
	
	@RequestMapping("/aboutus")
	public String goToAboutUsPage(){
		return "aboutus";
	}
	
	@RequestMapping("/home")
	public String goHomePage(){
		return "home";
	}
	
	@RequestMapping("/services")
	public String goServicesPage(){
		return "services";
	}
	
	@RequestMapping("/contacts")
	public String goContactsPage(){
		return "contacts";
	}
	
	@RequestMapping("/terms")
	public String goTermsPage(){
		return "terms";
	}
	
	@RequestMapping("/login")
	public ModelAndView goLoginPage() {
		LoginModel login = new LoginModel();
		ModelAndView mav = new ModelAndView("login", "login", login);
		return mav;
	}
	
	@RequestMapping("/signin")
	public String validateUser(Model model, LoginModel loginDetails) {
		try {
			boolean flag = loginService.validateLogin(loginDetails);
			model.addAttribute("user", loginDetails);
			if(flag)
				return "userpage";
			return "fail";
		} catch (Exception e) {
			return "fail";
		}
	}
	
	@RequestMapping("/registration")
	public ModelAndView goToRegistrationPage() {
		UserModel userDetails = new UserModel();
		ModelAndView mav = new ModelAndView("registration", "registration", userDetails);
		return mav;
	}
	
	/*@RequestMapping("/signup")
	public String registerUser(UserModel userModel){
		try {
			if(userModel.getPassword().equals(userModel.getCpassword())){
				System.out.println("Password matched");
				userService.registerUser(userModel);
				return "userpage";
			}
			return "fail";
		} catch (Exception e) {
			return "fail";
		}
	}*/
	
	@RequestMapping("/signup")
	public String doRegister(Model model, @Valid @ModelAttribute("registration") UserModel userModel, Errors err) {
		try {
			
			if(!err.hasErrors()) {	
				userService.registerUser(userModel);
				return "userpage";
			}
			if(err.hasErrors()) {
				model.addAttribute("status", "Form submission has errors.");
				return "registration";
			}
			model.addAttribute("status", "Form submission is successful.");
			return "registration";
		} catch (Exception e) {
			return "fail";
		}
	}
}
