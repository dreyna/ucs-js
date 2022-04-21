<%-- 
    Document   : ejemplo1
    Created on : 19 abr. 2022, 1:50:44
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                text-align: center;
            }
            h1{
                text-align: center;
            }
            .caja{
                width: 300px;
                height: 25px;
                padding-left: 20px;
                font-size: 1rem;
                margin-bottom: 10px;
                border: 2px solid #cccccc;

            }
            .caja:hover{
                border: 2px solid #cccccc;
            }
            .boton{
                width: 325px;
                height: 40px;
                background-color: #0c3450;
                color: white;
            }
            ol{
                text-align: center;
            }
            li{
                width: 100px;
                text-align: left;
                color: blueviolet;
            }
            table{
                width: 500px;
                margin: 0 auto;
                margin-top: 20px;
            }
            thead{
                background-color: orange;
            }
        </style>
    </head>
    <body>
        <h1>Ejemplo 8</h1>
        <hr>
        <h2>Autentificación de Usuario con JavaScript</h2>
        <hr>
        <input type="text" class="caja" id="user"  placeholder="usuario" required=""><br>
        <input type="password" class="caja" id="clave"  placeholder="Password" required=""><br><!-- comment -->
        <button class="boton" onclick="login()">Login</button><br>        
        <script>
            function login() {

                var mensaje = "Usuario no autorizado...";
                var usuarios = new Array(3);
                var claves = new Array(3);

                usuarios[0] = "david";
                usuarios[1] = "ana";
                usuarios[2] = "lucas";

                claves[0] = "12345";
                claves[1] = "ana";
                claves[2] = "lucas2022";
                var user = document.getElementById("user");
                var pass = document.getElementById("clave");
                for (var i = 0; i < usuarios.length; i++) {
                    if ((usuarios[i] === user.value) && (claves[i] === pass.value)) {
                        mensaje = "Bienvenido al sistema...";
                        break;
                    }
                }

                alert(mensaje);
                document.getElementById("user").value="";
                document.getElementById("clave").value = "";
                document.getElementById("user").focus();

            }
        </script>
    </body>
</html>
