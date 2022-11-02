
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
        <title>Registro de Estudiantes</title>
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
                            <a href="registroEstudiantes.jsp" class="selected">
                                <i class="bx bx-file iconos"></i>
                                <span class="texto nav-texto">Registrar</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="colaEstudiantes.jsp">
                                <i class="bx bx-time-five iconos"></i>
                                <span class="texto nav-texto">En cola</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="#">
                                <i class="bx bxs-user-check iconos"></i>
                                <span class="texto nav-texto">Inscribir</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="#">
                                <i class="bx bx-notification iconos"></i>
                                <span class="texto nav-texto">Anuncios</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="#">
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

        <!-- SECTION PARA REGISTRO DE ESTUDIANTES -->
        <section class="inicio" id="registroEstudiantes">
            <div class="body-Alu">
                <div class="container">
                    <form action="RegistroDeAlumno" method="post">
                        <h2 class="tittle-Alu">Registro de Alumnos</h2>
                        <div class="contenido-Alu">
                            <div class="input-Alu">
                                <label for="">Nombres</label>
                                <input
                                    type="text"
                                    placeholder="Escriba los nombre"
                                    name="Nombre"
                                    required=""
                                    />
                            </div>
                            <div class="input-Alu">
                                <label for="">Apellidos</label>
                                <input
                                    type="text"
                                    placeholder="Escriba los apellidos"
                                    name="Apellido"
                                    required=""
                                    />
                            </div>
                            <div class="input-Alu">
                                <label for="">Carnet</label>
                                <input
                                    type="text"
                                    placeholder="Escriba el No.Carnet "
                                    name="Carnet"
                                    required=""
                                    />
                            </div>
                            <div class="input-Alu">
                                <label for="">Fecha de Nacimiento</label>
                                <input
                                    type="date"
                                    placeholder="Indique la fecha de Nacimiento"
                                    name="Nacimiento"
                                    required=""
                                    />
                            </div>
                            <div class="input-Alu">
                                <label for="">Correo Electronico</label>
                                <input type="text" placeholder="@mail" name="Correo" required="" />
                            </div>
                            <div class="input-Alu">
                                <label for="">Celular</label>
                                <input
                                    type="text"
                                    placeholder="Escriba el No.Celular"
                                    name="Celular"
                                    required=""
                                    />
                            </div>
                            <div class="anuncio">
                                <p>
                                    Registro de estudiantes para el ciclo 2023 del colegio
                                    "proyectofinal" por favor lea bien los datos antes de ingresarlos.
                                </p>
                            </div>
                        </div>
                        <div class="btn-container">
                            <button type="submit">Registrar</button>
                        </div>
                    </form>
                </div>
            </div>
        </section>

        <script src="./js/barra.js"></script>
    </body>
</html>
