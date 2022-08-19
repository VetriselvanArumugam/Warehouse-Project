package com.chainsys.bestPractices.decoupled;

public class TestBike {

	public static void main(String[] args) {

		PetrolEngine pe = new PetrolEngine();
		SteelWheel[] sWheels= new SteelWheel[4];
		sWheels[0]=new SteelWheel();
		sWheels[0].location="Front";
		sWheels[1]=new SteelWheel();
		sWheels[1].location="Back";

		Bike bike = new Bike();
		bike.setEngine(pe);
		bike.setWheels(sWheels);
		bike.startBike();
				
		DieselEngine de=new DieselEngine();
		WoodenWheel[] wWheels=new WoodenWheel[4];
		wWheels[0]=new WoodenWheel();
		wWheels[0].location="front";
		wWheels[1]=new WoodenWheel();
		wWheels[1].location="Back";
		
		Bike secondBike=new Bike();
		secondBike.setEngine(de);
		secondBike.setWheels(wWheels);
		secondBike.startBike();	
	}

}
