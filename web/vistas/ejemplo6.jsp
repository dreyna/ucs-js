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
        <h1>Ejemplo 6</h1>
        <hr>
        <h2>Calcular el área de un Circulo</h2>
        <hr>
        <div id="datos"></div>
        <script>
            var radio = prompt("Ingresar el radio en metros: ");
            var area;
            area = Math.pow(radio,2)*Math.PI;
            document.getElementById("datos").innerHTML="<h1>El área del círculo es: "+area+"</h1>";
        </script>
    </body>
</html>
