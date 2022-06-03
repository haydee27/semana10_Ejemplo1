<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : mostartodo
    Created on : 06-03-2022, 09:03:09 AM
    Author     : MINEDUCYT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Todos los registros</h1>
        <c:forEach var="listatotal" items="${sesionScope.personas}">
        
        DUI: ${listatotal.dui}<br>
        Apellidos: ${listatotal.apellidos}<br>
        Nombres: ${listatotal.nombres}<br>
        <br>
        <hr>
       </c:forEach>
</body>  
</html>
