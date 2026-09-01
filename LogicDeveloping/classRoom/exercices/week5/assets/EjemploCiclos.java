import java.util.Scanner;

public class EjemploCiclos {
    public static void main(String[] args) {

        /*
         * Un sistema de menú iterativo que clasifica edades ingresadas. Combina
         * do-while (para el menú continuo) y else if (para la clasificación). Infante,
         * adolescente, adulto, tercera
         */

        Scanner leer = new Scanner(System.in);
        int edad;
        boolean opcion = true; // ("true o false")

        while (opcion) {
            // logica
            System.out.println("Ingresa la edad: Ejemplo 4");
            // cuatro - false es el numero errado
            // todo: Incluir un proceso que permita identificar si el usuario ingreso un
            // numero y le permita continuar o si ingreso letrar, le vuelta a preguntar.

            edad = leer.nextInt();
            if (edad < 0) {
                System.out.println("Ingresa una edad correcta");
            } else if (edad < 11) {
                System.out.println("Eres infante");
            } else if (edad < 18) {
                System.out.println("Eres adolescente");
            } else if (edad < 60) {
                System.out.println("Eres Adulto");
            } else {
                System.out.println("Eres Adulto Mayor...");
            }

            System.out.println("¿Quieres salir? Si o No");
            String continuar = leer.next();
            if (continuar.equalsIgnoreCase("si")) {
                opcion = false;
            }
        }

        leer.close();
    }
}
