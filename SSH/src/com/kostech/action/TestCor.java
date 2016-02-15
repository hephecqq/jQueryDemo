package com.kostech.action;

public class TestCor {

	public static Cordinate getCor(int x,int y){
		Cordinate c=new Cordinate(x, y);
		
		return c;
	}
	public static void main(String[] args) {
		Cordinate cc=getCor(10, 20);
		cc.getX();
	}
}
