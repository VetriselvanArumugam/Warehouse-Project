package com.chainsys.task;

import java.util.Scanner;

public class StockTask {
    static int QuantityOfPens =100;
    static int penPrice =10;
    public static void addQuantityOfPen() {
        int addQuantity;
        System.out.println("Quantity of Pen :"+QuantityOfPens);
        Scanner scan = new Scanner(System.in);
        System.out.println("Enter add Quantity");
        addQuantity = scan.nextInt();
        addQuantity =QuantityOfPens+addQuantity;
        System.out.println("Quantity of Pen :"+addQuantity);
        scan.close();
    }
    public static void subQuantityOfPen() {
        int subQuantity;
        Scanner scan = new Scanner(System.in);
        System.out.println("Enter Quantity");
        subQuantity = scan.nextInt();
        subQuantity =QuantityOfPens-subQuantity;
        System.out.println(subQuantity);
        scan.close();
    }
    public static void increasingPrice() {
        int addPrice;
        Scanner scan = new Scanner(System.in);
        System.out.println("Enter increasing price");
        addPrice =scan.nextInt();
        addPrice =penPrice+addPrice;
        System.out.println(addPrice);
        scan.close();
    }
    public static void decreasingPrice() {
        int decPrice;
        Scanner scan = new Scanner(System.in);
        System.out.println("Enter decreasing price");
        decPrice =scan.nextInt();
        decPrice =penPrice-decPrice;
        System.out.println(decPrice);
        scan.close();
    }
}
