package com.chainsys.bestPractices.references;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Stream;

public class Lessons {
	public static void testA() {
		List<Phone> phoneList = new ArrayList<Phone>();
		// phone::print;//direct call not worked
		// method reference only worked in
		phoneList.add(new Phone());
		phoneList.add(new Phone());
		phoneList.add(new Phone());
		phoneList.add(new Phone());
		phoneList.forEach(System.out::println);
	}

	public static void testB() {
		List<Long> phoneNumber = new ArrayList<Long>();
		phoneNumber.add(9025775648L);
		phoneNumber.add(9025775648L);
		phoneNumber.add(9025775648L);
		phoneNumber.add(9025775648L);
		phoneNumber.add(9025775648L);
		phoneNumber.add(9025775648L);
		// phoneNumber.forEach(Phone::print);
		Phone iphone = new Phone();
		phoneNumber.forEach(iphone::makeCall);// non static method -> using object reference to call instance method
	}

	// constructor reference
	public static void testC() {
		PhoneEmpty mobileA = Phone::new;
		// constructor reference
		Phone firstphone = mobileA.get();// factory method
		firstphone.makeCall(9025775648L);
		phoneWithNumberModel mobileB = Phone::new;
		// parameterized constructor call
		Phone secondPhone = mobileB.get(9025775648L, "5Gsamsung");
		secondPhone.makeCall(9025775648L);
		System.out.println(secondPhone.toString());
	}

	public static void testD()
	{
	Map<Long, String> phoneMap = new HashMap<Long, String>();
	phoneMap.put(8220589915L, "Redmi");
	phoneMap.put(8220589915L, "Vivo");
	phoneMap.put(8220589615L, "Nokia");
	phoneMap.put(82207589915L, "Oneplus");
	phoneMap.put(8220589915L, "Oppo");
	//Set<Map.Entry<Long,String>> entries = phoneMap.entrySet();
	//Stream<Map.Entry<Long,String>> entryStreams = entries.stream();
	Set<Long> longSet = phoneMap.keySet();
	Stream<Long> numberStream = phoneMap.keySet().stream();
	//Map has to be convert to a Set
	Phone[] phonearray = numberStream.map(Phone::new)//constructor reference of Phone
			.toArray(Phone[]::new);//constructor reference of array
	
	//int count=phonearray.length;
	//for(int i=0;i<count;i++)
	//{
	// System.out.println(phonearray[i]);
//    }
	//Stream<Phone>phoneA= phonearray.stream();
	//Cannot use stream method on an Array directly
	//creating a stream from arrays
	Stream<Phone> phoneStream=Arrays.stream(phonearray);
	phoneStream.forEach(System.out::println);
	
	}
}

// functional Interface for non parameterized constructor
interface PhoneEmpty {
	Phone get();
}

// Functional Interface for Parameterized constructor
interface phoneWithNumberModel {
	Phone get(long num, String model);
}

class Phone {
	private long number;
	private String model;

	public Phone() {
		System.out.println("Default Constructor ");
	}

	public Phone(long number) {
		System.out.println("Single parameter constructor");
		this.number = number;
		this.model = "not assigned";
	}

	public Phone(long number, String model) {
		System.out.println("Parameterized Constructor ");
		this.number = number;
		this.model = model;
	}

	public void makeCall(long number) {
		System.out.println("Call made: " + number);
	}

	public static void print(long number) {
		System.out.println("Print Document: " + number);
	}

	@Override
	public String toString() {
		return this.number + " " + this.model;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}
}