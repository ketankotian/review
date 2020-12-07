package demo;

import java.util.Scanner;

public class PrimeNumber {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.println("Please enter a number : ");
		int num = sc.nextInt();
		int count=0;
		
		for (int i = 2; i < num; i++) {
			if(num%i==0) {
				count=count+1;
	
			}
			
		}
		if(count ==0) 
			System.out.println("Entered number is Prime Number ");
			else
				System.out.println("Entered number is Not Prime Number ");			
	
	}

}
