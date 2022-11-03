
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%
    HttpSession sesion = request.getSession(false);
    String usuario = (String) sesion.getAttribute("usuario");
    if (usuario.equals("")) {
        response.sendRedirect("index.jsp");
    };
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
        <link rel="stylesheet" href="./CSS/tarjetas.css" />
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);

            if (sesion.getAttribute("usuario") == null) {
                response.sendRedirect("index.jsp");
            };
        %>
        <title>Menu</title>
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
                            <a href="#inicio" class="selected">
                                <i class="bx bx-home iconos"></i>
                                <span class="texto nav-texto">Menu Principal</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="registroEstudiantes.jsp">
                                <i class="bx bx-file iconos"></i>
                                <span class="texto nav-texto">Registrar</span>
                            </a>
                        </li>
                        <li class="nav-link">
                            <a href="colaEstudiantes.jsp">
                                <i class="bx bx-time-five iconos"></i>
                                <span class="texto nav-texto">Ver En cola</span>
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
                            <a href="#AnunciosN">
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

        <section class="inicio" id="inicio">

            <!-- CARDS -->
            <div class="body2">
                <div class="tarjeta" style="--imagen-card: url(..//imagenes/registrar.png)">
                    <div class="info-tarjeta">
                        <h2>Registrar</h2>
                        <a href="registroEstudiantes.jsp">Ir a registrar</a>
                    </div>
                </div>
                <div class="tarjeta" style="--imagen-card: url(..//imagenes/cola.png)">
                    <div class="info-tarjeta">
                        <h2>Ver En cola</h2>
                        <a href="colaEstudiantes.jsp">Agregar a la Cola</a>
                    </div>
                </div>
                <div class="tarjeta" style="--imagen-card: url(..//imagenes/inscripcion.png)">
                    <div class="info-tarjeta">
                        <h2>Inscripcion</h2>
                        <a href="inscribir.jsp">Ir a Inscribir</a>
                    </div>
                </div>
            </div>
        </section>
                       
        <!-- SCRIPTS -->
        <section class="inicio" id="AnunciosN">
            <h1>Anuncios Publicados</h1>

            <!<!----------------------------------------------------------Anuncios---------------------------------------------------------->        

            <div class="body">
                <div class="slider">
                    <ul>
                        <li><img src="imagenes/Anuncio1.jpg" alt=""></li> 
                        <li><img src="imagenes/Anuncio2.jpg" alt=""></li>
                        <li><img src="imagenes/Anuncio3.jpg" alt=""></li>
                        <li><img src="imagenes/Anuncio4.jpg" alt=""></li>
                        <li><img src="imagenes/Anuncio5.jpg" alt=""></li>
                        <li><img src="imagenes/Anuncio6.JPG" alt=""></li>
                    </ul>
                </div>
            </div>

            <!<!----------------------------------------------------------Anuncios---------------------------------------------------------->    

        </section>

        <script src="./js/barra.js"></script>
        
        <!-- Utilizando JQuary para efecto scroll smoth -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $("a").on('click', function (event) {

                    if (this.hash !== "") {
                        event.preventDefault();

                        var hash = this.hash;

                        $('html, body').animate({
                            scrollTop: $(hash).offset().top
                        }, 500, function () {

                            window.location.hash = hash;
                        });
                    }
                });
            });
        </script>
    </body>
</html>
