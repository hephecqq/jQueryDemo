package com.kostech.action;

import com.opensymphony.xwork2.ActionSupport;

public class ConversionAction extends ActionSupport {

	private Integer age;
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception {
		System.out.println(age);
		return "success";
	}
}
