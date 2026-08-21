import java.util.Scanner;

public class Discount{

	public static void main(String[] args){

		Scanner read = new Scanner(System.in);
		int total;

		System.out.println("What is the total amount for you today?:");
		total = read.nextInt();

		if (total >= 100000){
			System.out.println("You apply for a 10% discount for this purchase!!!");
		} else {
			System.out.println("Thank you for you purchase!!");
		}
		read.close();
	}
}
