package com.chainsys.task;

import java.util.Scanner;

public class Stocks {

    public static void main(String[] args) {

        loadMenu();
    }
    public static void loadMenu()  {
        System.out.println(
                "Enter the Pen Info :"
                + " ");
        System.out.println("1 - Add Quantity of Pen");
        System.out.println("2 - Reduced Quantity of Pen");
        System.out.println("3 - Increasing Price Of Pen");
        System.out.println("4 - Reduced Price Of Pen ");
        java.util.Scanner sc = new java.util.Scanner(System.in);
        try {
        int call = sc.nextInt();
        
        switch (call) {
        case 1:
            StockTask.addQuantityOfPen();
            break;

        case 2:
            StockTask.subQuantityOfPen();
            break;
        case 3:
            StockTask.increasingPrice();
            break;
        case 4:
            StockTask.decreasingPrice();
            break;
        
        }
        }finally {
            sc.close();
        }
    
    }


	}


