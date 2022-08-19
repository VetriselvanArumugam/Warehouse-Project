package com.chainsys.bestPractices.decoupled;

// Objects of this class can work only with any engine, and with any wheel
// The car class is decoupled from PetrolEngine class, and SteelWheel class
public class Bike {

	private Iengine engine; // Early bound with Engine interface
	
	public Iengine getEngine() {
		return engine;
	}
	// The type of engine will be injected to the bike class
	// At runtime using the Setter method, This is called as Setter based dependency injection.
		

	public void setEngine(Iengine engine) {
		this.engine = engine;
	}
	// The type of wheel will be injected to the bike class
	// At runtime using the Setter method, This is called as Setter based dependency injection.
	
	public Iwheel[] getWheels() {
		return wheels;
	}

	public void setWheels(Iwheel[] wheels) {
		this.wheels = wheels;
	}

	private Iwheel[] wheels; // Early bound with Wheel interface
	
//	public Bike(Iengine engine, Iwheel[] wheel) {
//		this.engine = engine;
//		this.wheels = wheel;
//	}
	
	public void startBike() {
		engine.start();
		wheels[0].rotate();
		wheels[1].rotate();

	}

	public Iwheel[] getWheel() {
		return this.wheels;
	}
}
