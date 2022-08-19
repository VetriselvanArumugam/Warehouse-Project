package com.chainsys.bestPractices.decoupled;

public class WaterEngine implements Iengine{

	@Override
	public void start() {
		System.out.println("Water Engine is Starting");
	}
	@Override
	public void stop() {
		System.out.println("Water Engine is Stopped");
	}

}
