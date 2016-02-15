package com.kostech.action;

public class PointFactory {

	private static PointFactory factory=null;
	private PointFactory(){
		
	}
	public static PointFactory getInstance(){
		if(factory==null){
			return new PointFactory();
		}
		return factory;
	}
	public static Point getPoint(String label,int x,int y,int z){
		switch (label) {
		case "two":
			//���ά����
			return new Point(x,y);
		case "three":
			//����ά����
			return new Point(x,y,z);
		default:
			break;
		}
		return null;
	}
}
