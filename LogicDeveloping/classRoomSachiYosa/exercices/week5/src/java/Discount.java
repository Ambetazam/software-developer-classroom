import java.util.Scanner;

public class Discount{

	public static void main(String[] args){


		Scanner read = new Scanner(System.in);

		int total;
		double discount = 0.10;
		int totalPayment = ((total * discount) - (total));

		System.out.println("What is the total amount for you today?:");
		total = read.nextInt();

		if (total >= 100000){
			System.out.println("You apply for a 10% discount for this purchase!!!");
			System.out.println("You save in this purchase: " + (total * discount) + " usd "+ " Thank you!");
			System.out.println("You need to pay: " + totalPayment);
		} else {
			System.out.println("Thank you for you purchase!!");
		}
		read.close();
	}
}
