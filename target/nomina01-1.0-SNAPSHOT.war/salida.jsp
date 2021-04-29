<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="co.edu.misena.nomina01.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resultados Nomina</title>
</head>
<body>
<h1>Los resultados de su nomina son: </h1>
<%

    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String documento = request.getParameter("documento");
    Integer documentoT = Integer.parseInt(documento);
    String dias = request.getParameter("dias");
    double diasTraba = Double.parseDouble(dias);
    String sueldo = request.getParameter("sueldo");
    double sueldoTotal;
    double sueldoPagar = Double.parseDouble(sueldo);
    sueldoTotal = sueldoPagar / 30 * diasTraba;
    double subsidio = 106.544;
    double devengos;
    devengos = subsidio + sueldoTotal;
%>
<br/>
<from>
    <fieldset>
        <legend>Datos personales</legend>
        <p>Su <strong>Nombre</strong> es <strong><%= nombre %>
        </strong></p>
        <p>Su <strong>Apellido</strong> es <strong><%= apellido %>
        </strong></p>
        <p>Su <strong>Documento</strong> es <strong><%= documentoT%>
        </strong></p>
        <p>los dias que usted <strong> trabajo </strong> son <strong><%=diasTraba%>
        </strong></p>
        <h2>Devengos</h2>
        <p>El valor de su <strong>subsidio </strong> es <strong><%=subsidio%>
        </strong></p>
        <p>El valor de su <strong>sueldo </strong> es <strong><%=sueldoTotal%>
        </strong></p>
        <p>El subtotal de <strong>devengos </strong> es <strong><%=devengos%>
        </strong></p>
        <h2>Descuentos</h2>
        <p>Su descuento de <strong> Eps </strong> es <strong><%=calculos.descuentoEps(sueldoTotal)%>
        </strong></p>
        <p>Su descuento de <strong> Arl </strong> es <strong><%=calculos.descuentosArl(sueldoTotal)%>
        </strong></p>
        <p>Su descuento de <strong> Pensión </strong> es <strong><%=calculos.descuentoPension(sueldoPagar)%>
        </strong></p>
        <p>El subtotal de <strong>Descuentos</strong>es <strong><%=calculos.sumaDescuentos()%></strong></p>
        <h2>El Total a <strong>pagar</strong>es <strong><%=calculos.totalPagar()%></strong></h2>
    </fieldset>
</from>
</body>
</html>