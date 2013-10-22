package org.guess.security.user;

public class StaticTest {

	private int a;
	private int b;
	
	public StaticTest() {
		System.out.println("co");
	}
	
	{
		a = 1;
		System.out.println("a = 1");
	}
	
	{
		b = 2;
		System.out.println("b = 1");
	}
	
	public static void main(String[] args) {
		StaticTest test = new StaticTest();
		System.out.println(test.a);
		System.out.println(test.b);
	}
}
