import java.util.Scanner;

public class Average{

	public static void main(String[] args){

		Scanner reader = new Scanner(System.in);

		System.out.print("Cuanta cantidad de productos desea ingresar al lote del Catalogo?:");
		int cantidadProductos = reader.nextInt();
		reader.nextLine();

		double costoTotal = 0.0;
		int cantidadCategoriaAlta = 0; // Defino el nombre del acomulador para el ciclo for iniciando desde cero; 

		// Inicio Ciclo For
		for (int productoActual = 1; productoActual <= cantidadProductos; productoActual++){

			// Ingreso de datos de usuario
			System.out.println("Ingrese el nombre del producto " + productoActual + ":");
			String nombreProducto = reader.nextLine();
			System.out.println("Ingrese el costo base de " + productoActual + ":");
			double costoBase = reader.nextDouble();
			reader.nextln();

			costoTotal += costoBase;

			// Next I ask for the conditionals to categorize the prices according with the costo base ingresado por el usuario

			if (costoBase < 10000){

				System.out.println("El producto: " + nombreProducto + "es de Categoria Baja");

			} else if (costoBase >= 10000 && costoBase <= 50000) {
				System.out.println("El producto: " + nombreProducto + "es de Categoria Media");
			} else {
				System.out.println("El producto: " + nombreProducto + "es de Categoria Alta");
				cantidadCategoriaAlta++; // Acomulador para los productos en Categoria Alta.
			}
		}
		// Fin de Ciclo For

		

		// Next I continue with the average calculation.

		double costoPromedio = costoTotal / cantidadProductos;
		System.out.println("\n RESULTADO DE INGRESO DE LOTE AL CATALOGO \n");
		System.out.println("El Costo Promedio del Lote Ingresado es de: " + costoPromedio + "$ COP");
		System.out.println("La Cantidad de Productos Ingresados para Categoria Alta es: " + cantidadCategoriaAlta);
		
		reader.close();
	}
}
