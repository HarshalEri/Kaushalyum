package com.kaushalyum.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kaushalyum.dao.UserDao;
import com.kaushalyum.entities.Userdetail;
import com.kaushalyum.model.LoginModel;

@Transactional
@Service
public class LoginService {

	@Autowired
	private UserDao userDao;
	
	public boolean validateLogin(LoginModel loginDetails){
		Userdetail userDetails = userDao.getUserDetails(loginDetails.getUsername());
		if(userDetails != null) {
			if(userDetails.getPassword().equals(loginDetails.getPassword()))
					return true;
		}
		return false;
	}
}
