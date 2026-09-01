import java.util.Scanner;

public class Main{


	public static void main(string[] args){


		int AGE = 18;
		int edadUsuario;
		String haveLicence;
		String haveRestriction;



		Scanner read = new Scanner(System.in);

		System.out.println("How old are you:");
		userAge = read.nextInt();

		System.out.println("Do you have driver license?: (Yes or Not)");
		haveLicense = read.next().toLowerCase();

		System.out.println("Do you have any restrictions to drive?: (Yes or Not)");
		haveRestricton = read.next().toLowerCase();




		if (userAge >= AGE){
			system.out.println("How old are you: ");

		} else {

			system.out.println("Your not enought older: ");

		}

		read.close();

	}
}
