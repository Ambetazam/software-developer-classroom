public class PerfilUsuario{
	public static void main(String[] args){
	

	//I call the scanner library here:
	Scanner myScanner = new Scanner(System.in);


	String name, rol, accessLevel;

	nameAdmin = "Jean Steven";
	rolAdmin = "Student";
	accessLevel = "Administrator";

	// We get into the scanner function then we mod the code a bit!
	// Then you need to import the library at the top of the code

	System.out.println("Write the user's name please: ");
	name = myScanner.next();
	System.out.print("Write your current role: ");
	role = myScanner.next();


	System.out.println("The current user is: " + name + "and the role is: " + role);






	System.out.println("The Name is: " + name);
	System.out.println("The Rol is: " + rolAdmin);
	System.out.println("The Access Level is: " + accessLevel);

	}
}
