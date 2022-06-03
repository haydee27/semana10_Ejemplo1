<%-- 
    Document   : res_pago
    Created on : 05-17-2022, 10:56:01 PM
    Author     : Haydee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nombre = request.getParameter("nombre");
            String senal = request.getParameter("calc");
            double ht = Double.parseDouble(request.getParameter("ht"));
            double ph = Double.parseDouble(request.getParameter("ph"));
            
            double salario = 0;
            double renta = 0;
            double pago = 0;
            
            if(senal != null && nombre!=""){
                salario = ht * ph;
                renta = salario * 0.1;
                
                pago = salario - renta;
            }
        %>
    <center>
        
        <table border="1">
            <tr>
                <th>Su nombre es:</th>
                <td><%= nombre%></td>
            </tr>
            <tr>
                <th>Su salario es:</th>
                <td><%= pago%></td>
            </tr>
            <tr>
                <th>El descuento aplicado es:</th>
                <td><%= renta%></td>
            </tr>
            <tr>
                <th></th>
                <td></td>
            </tr>
        </table>
    </center>
    </body>
</html>