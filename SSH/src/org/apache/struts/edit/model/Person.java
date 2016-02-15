package org.apache.struts.edit.model;

import java.util.Arrays;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

public class Person {

	@NotBlank(message = "firstName.required")
	private String firstName;

	@NotBlank(message = "lastName.required")
	private String lastName;
	private String sport;
	private String gender;
	private String residency;
	private boolean over21;

	@NotEmpty(message = "carModels.required")
	private String[] carModels;

	@Size(min = 1, message = "email.required")
	@Email(message = "email.format")
	private String email;

	@Pattern(regexp = "\\d{3}-\\d{3}-\\d{4}", message = "phoneNumber.required")
	private String phoneNumber;

	@Override
	public String toString() {
		return "Person [firstName=" + firstName + ", lastName=" + lastName + ", sport=" + sport + ", gender=" + gender
				+ ", residency=" + residency + ", over21=" + over21 + ", carModels=" + Arrays.toString(carModels)
				+ ", email=" + email + ", phoneNumber=" + phoneNumber + "]";
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getSport() {
		return sport;
	}

	public void setSport(String sport) {
		this.sport = sport;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getResidency() {
		return residency;
	}

	public void setResidency(String residency) {
		this.residency = residency;
	}

	public boolean isOver21() {
		return over21;
	}

	public void setOver21(boolean over21) {
		this.over21 = over21;
	}

	public String[] getCarModels() {
		return carModels;
	}

	public void setCarModels(String[] carModels) {
		this.carModels = carModels;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
}
