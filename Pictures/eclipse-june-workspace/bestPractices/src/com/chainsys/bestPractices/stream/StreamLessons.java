package com.chainsys.bestPractices.stream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.stream.BaseStream;
import java.util.stream.LongStream;
import java.util.stream.IntStream;
import java.util.stream.DoubleStream;
import java.util.Random;

//Stream is a sequence of elements computed on demand
//Stream supports sequential and parallel aggregations operations
//Stream is a not a data structure
//Stream cannot be iterated directly
//Streams cannot be created accessed using index value
//stream represents single use sequence of data
//stream should be operated on only once
public class StreamLessons {
	public static void demoA()
	{
       Stream s1=Stream.empty();
       Stream<Integer>intStream=Stream.of(10,20,30,40,50,60,70,80,90,100);
      //long count=intStream.count();
      //System.out.println("count is"+count );
      //stream has already been operated upon or closed
      //stream represents single use sequence of data
      //stream should be operated on only once
      //int value=intStream.findFirst().get();
      //findfirst() returns object of type optional
      //get() of Optional returns the first value
      //System.out.println(value);
      //System.out.println(intStream.toList());
      //System.out.println(intStream[0]); -ERROR
	}
	public static void demoB()
	{
		List<Integer> list = new ArrayList<Integer>();
		for(int i = 1; i< 10; i++){
		      list.add(i);
		}
		//List<Integer>list2=Arrays.asList(5,10,15,20,25,30);
		Stream<Integer>intStream=list.stream();
		List<Integer> evenNum=intStream.filter(i -> i%2 == 0)
                .collect(Collectors.toList());//collect() returns a collection
		System.out.println(evenNum);
	}
	public static void demoC()
	{
		List<Integer> integers = Arrays.asList(1, 2, 3, 4, 5);
		Integer sum = integers.stream()
		  .reduce(0, (a, b) -> a + b);
		System.out.println(sum);
		//Reduction of objects / elements-returning a single value 
		//by performing an operation on elements of a collection
	}
	public static void demoD()
	{
		IntStream intstream = IntStream.of(1,2,3,4,5);
		System.out.println(intstream.count());
		LongStream longstream = LongStream.of(1,2,3,4,5);
		System.out.println(longstream.sum());
		DoubleStream doublestream = DoubleStream.of(1.0,2.0,3.0,4.0,5.0);
		System.out.println(doublestream.sum());
	}
	public static void demoE()
	{
		Supplier<Stream<Integer>> intstream =  ()-> Stream.of(10, 2, 3, 4, 5);
		System.out.println("Count: "+intstream.get().count());
		System.out.println("First: "+intstream.get().findFirst().get());
		System.out.println("List: "+intstream.get().toList());
		//the get() method on the supplier creates a new stream everytime
	}
	public static void demoF()
	{
		Stream<Integer> intstream =IntStream.of(1,2,3,4,5).boxed();
		//converting primitive type to object
		System.out.println(intstream.findFirst().get());
	}
	public static void demoG()
	{
	Stream<Integer> streamOne = Stream.of(1,2,3,4,5,6,7,8,9);
	streamOne.forEach(p -> System.out.println(p));
	Stream<Integer> streamTwo = Stream.of( new Integer[]{1,2,3,4,5,6,7,8,9} );
	streamTwo.forEach(p-> System.out.println(p));
	}
	public static void demoH() 
	{
		Stream<Integer> randomNumbers = Stream
			      .generate(() -> (new Random()).nextInt(100));

			randomNumbers.limit(21).forEach(System.out::println);
	}
	public static void demoI()
	{
		List<String> memberNames = new ArrayList<>();
		memberNames.add("Amitabh");
		memberNames.add("Vijay");
		memberNames.add("Arjun");
		memberNames.add("Rajini");
		memberNames.add("Ajith");
		memberNames.add("Suriya");
		memberNames.add("Vishal");
		memberNames.add("Anjali");
		memberNames.add("Kamal");
		memberNames.stream().filter((s) -> s.startsWith("A"))
        .forEach(System.out::println);
		//filter returns a stream -intermediate operations
		memberNames.stream().filter((s) -> s.startsWith("V"))
        .map(String::toUpperCase)
        //map intermediate operations converts
        //each element in the stream into another object via the given function.
        .forEach(System.out::println);
		memberNames.stream().sorted()
        .map(String::toUpperCase)
        .forEach(System.out::println);
	}
	public static void demoJ()
	{
		List<String> memberNames = new ArrayList<>();
		memberNames.add("Amitabh");
		memberNames.add("Vijay");
		memberNames.add("Arjun");
		memberNames.add("Rajini");
		memberNames.add("Ajith");
		memberNames.add("Suriya");
		memberNames.add("Vishal");
		memberNames.add("Anjali");
		memberNames.add("Kamal");
		memberNames.add("Poona");
		memberNames.add("Pavi");
//Terminal operations return a result of a certain type after processing all the stream elements.
		List<String> memNamesInUppercase = memberNames.stream().sorted()
                .map(String::toUpperCase)
                .collect(Collectors.toList());
        System.out.println(memNamesInUppercase);
        boolean matchedResult = memberNames.stream()
       .anyMatch((s) -> s.startsWith("A"));

        System.out.println(matchedResult);     //true

        matchedResult = memberNames.stream()
       .allMatch((s) -> s.startsWith("A"));

        System.out.println(matchedResult);     //false

        matchedResult = memberNames.stream()
       .noneMatch((s) -> s.startsWith("E"));

       System.out.println(matchedResult);     //true
       long totalMatched = memberNames.stream()
    		    .filter((s) -> s.startsWith("A"))
    		    .count();
    		 
    		System.out.println(totalMatched); 
    		Optional<String> reduced = memberNames.stream()
    		        .reduce((s1,s2) -> s1 + "," + s2);
    		 
    		reduced.ifPresent(System.out::println);
	}
	public static void demoK()
	{
    		List<Integer> list = new ArrayList<Integer>();
    		for(int i = 1; i< 15; i++){ //the total value is multiply by the default formula is (10*0.65)
    		 list.add(i);
    		}
    		System.out.println(list.parallelStream().findFirst().get());
    		System.out.println(list.parallelStream().findAny().get());
	}
	
	
/*Stream created methods(Factory methods):
	  empty(),of(),generate(),

	Intermediate methods:
	    filter()
	    map()
	    sorted()
	    limit()
	  
	Assignment:
	   distinct()
	   peek()
	   skip()
	   
	Terminal methods:
	   forEach()
	   toArray()
	   toList()
	   reduce()
	   collect()
	   min(),max()
	   count()
	   anyMatch()
	   allMatch()
	   nonMatch()
	   findFirst(),findAny()
	   isPresent(),isEmpty()*/
	//Intermediate operations get elements one-by-one and process them. All intermediate operations are lazy, and, as a result, no operations will have any effect until the pipeline starts to work.

//Terminal operations mean the end of the stream lifecycle. Most importantly for our scenario, they initiate the work in the pipeline.
	public static void demoL()
	{
		List<Integer> list = Arrays.asList(1, 2, 3, 4, 5);
		     
		//    List<Integer> newList = list.stream()
		//          .peek(System.out::println)
		//          .collect(Collectors.toList());
	
		//System.out.println(newList);    
		//list.stream().peek(System.out::println);
		 list.stream().forEach(System.out::println);
	}
	public static void demoM()
	{
	 Stream.of("one", "two", "three", "four")
	  .peek(System.out::println)
	  .collect(Collectors.toList());
	 //.peek(e-> System.outprintln("value:" +e)
	}
	public static void demoN()
	{
		//Stream.of("one", "two", "three", "four")
		  //.peek(e->e.toUpperCase())//peek does not manipulate the element
		 // .forEach(System.out::println);
		Stream.of("one", "two", "three", "four")
		  .map(e->e.toUpperCase())//peek() does not manipulate the element
		  .forEach(System.out::println);//map() well manipulate the element
	}
	//peek() can be useful in altering the inner state of an element
	//without replacing the element
	public static void demoO()
	{
		//
		 Stream<Emp> empStream = Stream.of(new Emp(100,"Alice"), new Emp(101,"Bob"), new Emp(102,"Chuck"));
		 empStream.peek(e -> e.setName(e.getName().toLowerCase()))
		  .forEach(System.out::println);	
	}
}
	//
	class Emp
	{
		private int id;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		private String name;
	public Emp(int id,String name) {
			this.id=id;
			this.name=name;
		}
	public String toString()
		{
			return getName();
		}
	}
	


