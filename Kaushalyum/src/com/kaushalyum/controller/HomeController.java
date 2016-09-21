package com.kaushalyum.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kaushalyum.model.LoginModel;


@Controller
public class HomeController {
	
	@RequestMapping("/aboutus")
	public String goToAboutUsPage(){
		System.out.println("In controller");
		return "aboutus";
	}
	
	@RequestMapping("/home")
	public String goHomePage(){
		System.out.println("In controller");
		return "home";
	}
	
	@RequestMapping("/login")
	public ModelAndView goLoginPage() {
		System.out.println("In controller");
		LoginModel login = new LoginModel();
		ModelAndView mav = new ModelAndView("login", "login", login);
		return mav;
	}
	
	@RequestMapping("/signin")
	public String doLogin(Model model, LoginModel lm) {
		System.out.println(lm);
		model.addAttribute("user", lm);
		return "menu";
	}
}
