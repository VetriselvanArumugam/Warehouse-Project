package com.chainsys.bestPractices.abstraction;

// Can a class have only Private Constructors ?

public class ScoreBoard {
	
	public int TargetScore=215;
	private ScoreBoard() {
		System.out.println("Object created for ScoreBoard");
	}
	// Create Object is a factory method
	public static ScoreBoard createObject() {
		return new ScoreBoard();
		
	}
}

