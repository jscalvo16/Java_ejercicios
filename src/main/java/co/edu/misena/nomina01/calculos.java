package co.edu.misena.nomina01;

public class calculos {
    static double resultadoeps;
    static double resultadoPen;
    static double resultadoArl;
    static double suma;
    static double total;

    public static double descuentoEps(double eps) {
        resultadoeps = eps * 0.04;
        return resultadoeps;
    }

    public static double descuentoPension(double pension) {
        resultadoPen = pension * 0.04;
        return resultadoPen;
    }

    public static double descuentosArl(double arl) {
        resultadoArl = arl * 0;
        return resultadoArl;
    }

    public static double sumaDescuentos() {
        suma = resultadoArl + resultadoeps + resultadoPen;
        return suma;
    }

    public static double totalPagar() {
        total = suma + 106.054;
        return total;
    }
}
