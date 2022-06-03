<%-- 
    Document   : salario
    Created on : 17-may-2022, 13:53:27
    Author     : ITCA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salario</title>
    </head>
    <body>
        <h1><center>COMPLETE LA INFORMACIÓ DEL TRABAJADOR</center></h1>
        <br>
        <<form action="res_pago.jsp" method="post">
            <table width="50%" border="5">
                <tr>
                    <th>Nombre del trabajador</th>
                    <td><input type="text" name="nombre" size="35" maxlength="35"></td>
                </tr>
                <tr>
                    <th># Horas Trabajadas</th>
                    <td><input type="text" name="ht" size="5" maxlength="5"></td>
                </tr>
                <tr>
                    <th># Pago por hora</th>
                    <td><input type="text" name="ph" size="5" maxlength="5"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Calcular" name="calc">
                        <input type="reset" value="Resetear" >
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

