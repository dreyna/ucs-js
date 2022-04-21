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
                width: 150px;
                height: 40px;
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
            .azul{
                background-color: #0c3450;
            }
            .rojo{
                background-color: red;
            }
        </style>
    </head>
    <body>
        <h1>Ejemplo 4</h1>
        <hr>
        <h3>Ocultar y mostrar elementos</h3>
        <hr>
        <br><br>
        <button id="ocultar" class="boton rojo">Ocultar</button>
        <button id="mostrar" class="boton azul">Mostrar</button>
        <h2 id="parrafo">Lenguaje de Programación II</h2>
        <script>
            const $btnOcultar = document.querySelector("#ocultar"),
                    $btnMostrar = document.querySelector("#mostrar"),
                    $parrafo = document.querySelector("#parrafo");

            $btnMostrar.addEventListener("click", () => {
                $parrafo.style.display = "block";
            });

            $btnOcultar.addEventListener("click", () => {
                $parrafo.style.display = "none";
            });
        </script>
    </body>
</html>
