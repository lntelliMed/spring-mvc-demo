package com.intellimed.springdemo.mvc.validation;

import java.lang.annotation.Annotation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator 
	implements ConstraintValidator<CourseCode, String> {
	private String prefixValue;
	@Override
	public void initialize(CourseCode courseCode) {
		prefixValue = courseCode.value();
	}

	@Override
	public boolean isValid(String enteredValue, ConstraintValidatorContext constraintValidatorContext) {
		
		boolean result;
		
		if (enteredValue != null){			
			result = enteredValue.startsWith(prefixValue);
		} else {
			result = true;
		}
		
	
		return result;
	}


}
