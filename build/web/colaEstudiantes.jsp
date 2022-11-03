<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%
    HttpSession sesion = request.getSession(false);
    String usuario = (String) sesion.getAttribute("usuario");
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="./CSS/menu.css" />
        <!-- Icons Boxicon -->
        <link
            href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
            />       
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);

            if (sesion.getAttribute("usuario") == null) {
                response.sendRedirect("index.jsp");
            };
        %>
        <title>Cola Estudiantes</title>
    </head>
    <body>

        <nav class="sbarra salir">
            <header>
                <div class="imagen-t">
                    <span class="imagen">
                        <img src="./imagenes/logousr.png" alt="logo" />
                    </span>

                    <div class="texto header-t">
                        <span class="nombre"><% out.println(usuario);%></span>
                        <span class="administrador">Administrador</span>
                    </div>
                </div>

                <i class="bx bx-chevron-right arrow1"></i>
            </header>

            <div class="menu-bar">
                <div class="menu">
                    <li class="buscar">
                        <i class="bx bx-search iconos"></i>
                        <input type="text" placeholder="Buscar..." />
                    </li>
                    <ul class="links">
                        <li class="nav-link">
                            <a href="menu.jsp">
                                <i class="bx bx-home iconos"></i>
                                <span class="texto nav-texto">INICIO</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="registroEstudiantes.jsp">
                                <i class="bx bx-file iconos"></i>
                                <span class="texto nav-texto">Registrar</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="colaEstudiantes.jsp" class="selected">
                                <i class="bx bx-time-five iconos"></i>
                                <span class="texto nav-texto">En cola</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="inscribir.jsp">
                                <i class="bx bxs-user-check iconos"></i>
                                <span class="texto nav-texto">Inscribir</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="anuncios.jsp">
                                <i class="bx bx-notification iconos"></i>
                                <span class="texto nav-texto">Anuncios</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="actividades.jsp">
                                <i class="bx bx-bar-chart-square iconos"></i>
                                <span class="texto nav-texto">Actividades</span>
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- Cerrar Sesion - Modo Obscuro -->
                <div class="boton-s">
                    <li class="nav-link">
                        <a action="cerrar" href="cerrar">
                            <i class="bx bx-log-out iconos"></i>
                            <span class="texto nav-texto">Cerrar Sesion</span>
                        </a>
                    </li>
                    <li class="modo-obscuro">
                        <div class="aspecto">
                            <i class="bx bx-moon iconos obscuro"></i>
                            <i class="bx bx-sun iconos claro"></i>
                        </div>
                        <span class="aspecto-texto texto">Modo Oscuro</span>

                        <div class="boton-modo">
                            <span class="modo"></span>
                        </div>
                    </li>
                </div>
            </div>
        </nav>

        <!-- SECTION COLA ESTUDIANTES -->
        <section class="inicio" id="registroEstudiantes">

            <div class="texto">
                <h1>COLA ESTUDIANTES</h1>
                <div>
                    <table>
                        <thead>
                            <<tr>
                                <th>Carnet</th>
                                <th>Fecha de Registro</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${Lista}">
                                <<tr>
                                    <td>${dato.getCarnet()}</td>
                                    <td>${dato.getFechaHoraActual()}</td>

                                    <!-- EDITAR -->
                                    <td><a href="ConsultaEstudiantesCola?Carnet=${datos.getCarnet()}">Editar</a></td>
                                    <td><a href="EliminaUsuario?codigo=${datos.getCodigo()}">Eliminar</a></td>

                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <form action="ConsultaEstudiantesCola" method="post">
                    <input type="submit" name="consulta" value="Consultar">
                </form>

            </div>
        </section>

        <script src="./js/barra.js"></script>

    </body>
</html>
