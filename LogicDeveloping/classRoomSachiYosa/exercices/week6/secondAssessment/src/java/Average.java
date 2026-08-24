import java.util.Scanner;

public class Average{

	public static void main(String[] args){

		Scanner reader = new Scanner(System.in);

		System.out.print("Cuanta cantidad de productos desea ingresar al lote del Catalogo?:");
		int cantidadProductos = reader.nextInt();
		scanner.nextLine();

		double costoTotal = 0.0;
		int cantidadCategoriaAlta = 0; // Defino el nombre del acomulador para el ciclo for iniciando desde cero; 
		
		for (int productoActual = 1; productoActual <= cantidadProductos; productoActual++){

			System.out.println("Ingrese el nombre del producto " + productoActual + ":");
			String nombreProducto = scanner.nextLine();
			System.out.println("Ingrese el costo base de " + procductoActual + ":");
			double costoBase = scanner.nextDouble();
			scanner.nextln();

			costoTotal += costoBase;


		}






	}
}
