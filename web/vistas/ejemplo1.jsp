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
                height: 32px;
                
            }
        </style>
    </head>
    <body>
        <h1>Ejemplo 1</h1>
        <hr>
        <input type="text" class="caja" id="nombre" onkeyup="mensaje()" placeholder="Ingresar Nombre">
        <div id="resultado"></div>
        <script>
            function mensaje() {
                var x = document.getElementById("nombre").value;
                document.getElementById("resultado").innerHTML = "<h1>Bienvenido: " + x + "</h1>";
            }
        </script>
    </body>
</html>
