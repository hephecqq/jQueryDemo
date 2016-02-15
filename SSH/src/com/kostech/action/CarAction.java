package com.kostech.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.kostech.model.Car;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CarAction extends ActionSupport implements ModelDriven<Car>, RequestAware, SessionAware {

	static List<Car> carList = new ArrayList<Car>();
	private String name;
	private Map<String, Object> session;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	static {
		carList.add(new Car("1", 1));
		carList.add(new Car("2", 2));
		carList.add(new Car("3", 3));
		carList.add(new Car("4", 4));
		carList.add(new Car("5", 5));

	}

	public String delete() {
		System.out.println(getModel().getName());
		for (Car car : carList) {
			int count = 0;
			count++;
			if (car.getName().equals(getModel().getName())) {
				carList.remove(count - 1);
				System.out.println(carList.size());
				return "delete";
			}
		}
		return "list";
	}
	// private Car car;

	public String edit2() {
		// 从页面获取传递过来的用户Id,然后从数据库中查询出此ID相应的信息封装成相应的对象
		// car=CarDao.getCarById(getId());
		// 将此对象压入栈顶
		// car.setName(),car.setAge();
		// 转入相应的页面进行表单回显

		return "edit2";
	}

	public String list() {
		session.put("carList", carList);
		return "list";
	}

	private Car car;
	private static final long serialVersionUID = 1L;

	@Override
	public Car getModel() {
		if (car == null) {
			car = new Car();
		}
		return car;
	}

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	@Override
	public String execute() throws Exception {
		System.out.println(this);
		System.out.println(car);
		System.out.println(ActionContext.getContext().getValueStack().getClass().getName());
		return SUCCESS;

	}

	private Map<String, Object> request;

	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}
}