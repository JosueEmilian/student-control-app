
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./CSS/styles.css" />
        <script src="js/main.js"></script>
        <title>Login Users</title>

        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);
        %>
    </head>
    <body>
        <!-- pl -->
        <div class="login-container">
            <div class="login-info-container">
                <h1 class="titulo">Inicio de Sesion</h1>
                <div class="google-login">
                    <div class="bloque-google">
                        <img src="./imagenes/Google.svg" alt="Google" />
                        <span class="textos">Google</span>
                    </div>
                    <div class="bloque-google">
                        <img src="./imagenes/apple.svg" alt="Apple" />
                        <span class="textos">Applee</span>
                    </div>
                </div>
                <p>Inicia</p>

                <form action="iniciar" method="post" class="input-container" id="forminicio">
                    <input class="input" type="text" placeholder="Usuario" name="usuario" id="usuario" />
                    <input class="input" type="password" placeholder="Password" name="clave" id="clave" />
                    <p>
                        Has olvidado tu Password <a class="span" href="#">Click aqui</a>
                    </p>
                    <input class="btn" type="button" value="Iniciar Sesion" id="btniniciar"/>
                    <p>
                        No tienes una cuenta? <a class="span" href="registro.jsp"> Registrarse</a>
                    </p>
                </form>
            </div>
            <img class="imagen-container" src="./imagenes/loginv2.png" alt="login" />
        </div>
    </body>
</html>
