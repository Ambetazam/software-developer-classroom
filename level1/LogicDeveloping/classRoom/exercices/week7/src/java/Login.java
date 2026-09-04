import java.util.Scanner;


public class Login {



	public static void main(String[] args) {


		Scanner read = new Scanner(System.in);

		String user, pswd;
		System.out.println("User");
		user = read.next();


		System.out.println("Password");
		pswd = read.next();
		verifyUser(user, pswd);
		read.close();



	}

	//Functions

	public static Boolean verifyUser(String user, String pswd){

		String realUser = "Administrator";
		String realPassword = "Changeme";

		if (realUser == user && realPassword == pswd){

			System.out.println("Hi");
			return true;

		}


		else{

			System.out.println("Incorrect");
		  return false; 

		}



		

	}






}
