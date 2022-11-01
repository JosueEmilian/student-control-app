<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cola Estudiantes</title>
    </head>
    <body>
        <h1>Consulta de Usuarios*</h1>
        <form action="ConsultaEstudiantesCola" method="post">
            <input type="submit" name="consulta" value="Consultar">
        </form>

        <div>
            <table>
                <thead>
                    <<tr>
                        <th>Carnet</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>FechaNacimiento</th>
                        <th>Correo</th>
                        <th>Celular</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dato" items="${Lista}">
                        <<tr>
                            <td>${dato.getCarnet()}</td>
                            <td>${dato.getNombre()}</td>
                            <td>${dato.getApellido()}</td>
                            <td>${dato.getFechaNacimiento()}</td>
                            <td>${dato.getCorreo()}</td>
                            <td>${dato.getCelular()}</td>

                            <!-- EDITAR -->
                            <td><a href="ConsultaEstudiantesCola?Carnet=${datos.getCarnet()}">Editar</a></td>
                            <td><a href="EliminaUsuario?codigo=${datos.getCodigo()}">Eliminar</a></td>
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
