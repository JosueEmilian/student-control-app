<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cola Estudiantes</title>
    </head>
    <body>
        <form action="Mostrar">
            <input type="submit" value="Mostrar">
        </form>
        
        
        <h1>Ultimo Estudiante Registrado</h1>
        <c:forEach items="${datos}" var="dato">
            $(dato.Nombre)} ${dato.Apellido}
        </c:forEach>
    </body>
</html>
