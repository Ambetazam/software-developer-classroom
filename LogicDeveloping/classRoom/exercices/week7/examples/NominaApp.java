import java.util.Scanner;

public class NominaApp {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        double valorHora, horasLaboradas, salarioTotal, salarioAntesDeducciones, deduccionesSalario;
        double PORCENTAJEDEDUCCION = 0.04; // EQUIVALE AL 4%

        System.out.println("¿Cuál es el valor de la hora?");
        valorHora = leer.nextDouble();
        System.out.println("¿Cuántas horas laboradas?");
        horasLaboradas = leer.nextDouble();

        salarioAntesDeducciones = SalarioBruto(valorHora, horasLaboradas);

        deduccionesSalario = calcularDeduccionSalud(salarioAntesDeducciones, PORCENTAJEDEDUCCION);

        salarioTotal = salarioAntesDeducciones - deduccionesSalario;

        colillaPago(salarioAntesDeducciones, deduccionesSalario, salarioTotal);

        leer.close();
    }

    public static Double SalarioBruto(double valorHora, double horasLaboradas) {
        double salario = valorHora * horasLaboradas;
        return salario;
    }

    public static Double calcularDeduccionSalud(double salario, double deducciones) {
        double totalDeducciones = salario * deducciones;
        return totalDeducciones;
    }

    public static void colillaPago(double salarioAntesDeducciones, double deduccionesSalario, double salarioTotal) {
        System.out.println("======= Colilla de Pago ========");
        System.out.println("Su salario Base es: " + salarioAntesDeducciones);
        System.out.println("Las deducciones por ley son: " + deduccionesSalario);
        System.out.println("Su salario a pagar es: " + salarioTotal);
    }

}
