import java.util.Scanner;


public class Colors{

	public static void main(String[] args){



		System.out.println("Write your favorite color, please: (e.x: Purple)");

		Scanner myColors = new Scanner(System.in);

		String color = myColors.next();
		
		color = myColors.next();

		//System.out.println("Write your favorite color, please: (e.x: Purple)");


		if (color == "blue"){

			System.out.println("You can enter inside the Club!!!");

		} else if (color == "green") {

			System.out.println("You can enter inside the Club!!");

		} else if (color == "red"){

			System.out.println("You can enter inside the Club!!!");
		} else {

			System.out.println("Try next time!!!");
		}

		myColors.close();
	}
}
