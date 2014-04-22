/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.unicredit.hibernatevalidator.dao;

import java.util.Set;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import javax.validation.constraints.NotNull;

import com.ctc.wstx.stax.WstxInputFactory;

/**
 *
 * @author afinamore
 */
public class Person {
	@NotNull
	private String nome;

	public String validate(){
		Validator validator;
		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		validator = factory.getValidator();
		Car car = new Car( "Morris", "D", 4 );

	    Set<ConstraintViolation<Car>> constraintViolations = validator.validate( car );
		return constraintViolations.iterator().next().getMessage();
	}
}
