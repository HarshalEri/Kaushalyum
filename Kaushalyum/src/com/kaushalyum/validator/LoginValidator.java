package com.kaushalyum.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.kaushalyum.model.UserModel;

@Component
public class LoginValidator implements Validator {
	
	@Override
	public boolean supports(Class<?> cls) {
		return UserModel.class.equals(cls);
	}

	@Override
	public void validate(Object target, Errors err) {
		if(target instanceof UserModel) {
			UserModel userDetails = (UserModel) target;
			if(!userDetails.getPassword().equals(userDetails.getCpassword()))
				err.rejectValue("password", "Mismatch", "password should match");
		} 
	}
}
