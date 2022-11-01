
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./CSS/registro.css"/>
        <script src="js/registro.js"></script>
        <title>Registro de Usuarios</title>
    </head>
    <body>

        <form action="nuevousuario" method="post" id="formregistro">
            <div class="container">
                <div class="form">
                    <div class="heading">
                        <img src="./imagenes/logo.png" class="logo" />
                        <h1 class="titulo">registro de usuarios</h1>
                    </div>
                    <div class="wrap">
                        <div class="f1 inputs">
                            <label>NOMBRE</label>
                            <input type="text" name="nombre" id="nombre" required=""/>
                            <span class="focus-input"></span>
                        </div>
                        <div class="f2 inputs">
                            <label>APELLIDO</label>
                            <input type="text" name="apellido" id="apellido" required=""/>
                            <span class="focus-input"></span>
                        </div>
                    </div>
                    <div class="wrap2 inputs">
                        <label>USUARIO</label>
                        <input type="text" name="usuario" id="usuario" required=""/>
                        <span class="focus-input2"></span>
                    </div>
                    <div class="wrap2 inputs">
                        <label>E-Mail</label>
                        <input type="text" name="correo" id="correo" required=""/>
                        <span class="focus-input2"></span>
                    </div>
                    <div class="wrap2 inputs">
                        <label>CLAVE</label>
                        <input type="password" name="clave" id="clave" required=""/>
                        <span class="focus-input2"></span>
                    </div>
                    <button class="btn" id="btnregistrar">Registrar</button>
                </div>
                <!--Image-->
                <div class="image">
                    <img src="./imagenes/loginv2.png" class="img" alt="" />
                </div>
            </div>
        </form>
    </body>
</html>
