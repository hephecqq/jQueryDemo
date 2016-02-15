package com.kostech.model;

import java.io.Serializable;

public class Car implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	
	public Car(String name, Integer age) {
		super();
		this.name = name;
		this.age = age;
	}
	private Integer age;
	public String getName() {
		return name;
	}
	public Car() {
		super();
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "Car [name=" + name + ", age=" + age + "]";
	}
	
}
