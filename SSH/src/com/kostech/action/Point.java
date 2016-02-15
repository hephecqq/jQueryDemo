package com.kostech.action;

public class Point {

	public Point(String label,int ...args){
		
		for(int arg:args){
			
		}
	}
	public static void main(String[] args) {
		PointFactory factory=PointFactory.getInstance();
		factory.getPoint("two", 10, 10, 0);
		factory.getPoint("three", 10, 10, 10);
	}
	private String dimension;
	
	//默认构造器
	public Point(){
		
	}
	//二维构造器
	public Point(int x,int y){
		this.x=x;
		this.y=y;
	}
	//三维构造器
	public Point(int x,int y,int z){
		this(x,y);
		this.z=z;
	}
	private Integer x;
	private Integer y;
	private Integer z;
	
	
	public void getDimension(String label){
		if(label.equals("two_dimension")){
			//z
			
		}
		else{
			//not z
			
		}
	}
}
