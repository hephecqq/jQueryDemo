package com.kostech.action;

public class Cordinate {

	private int x;
	private int y;
	
	//java������������Լ��Ĺ�����,java�����ٵ���Ĭ�ϵĹ�����
	public Cordinate(int x, int y) {
		super();
		this.x = x;
		this.y = y;
	}
	@Override
	public String toString() {
		return "Cordinate [x=" + x + ", y=" + y + "]";
	}
	public Cordinate() {
		super();
	}
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	
}
