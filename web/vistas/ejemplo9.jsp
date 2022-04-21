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
                padding-left: 10px;
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
        <h1>Ejemplo 9</h1>
        <hr>
        <h2>Realiza un script que cuente el número de vocales que tiene un texto.</h2>
        <hr>
        <textarea id="texto" name="texto" rows="10" cols="10" class="caja"></textarea><br>
        <input type="text" class="caja" id="mensaje"  disabled="" style="height: 32px;"><br>
        <button class="boton" onclick="contar()">Agregar</button><br>

        <script>
            
            function contar() {
                var cadena = document.getElementById("texto").value;
                var numchar = cadena.length;    //Devuelve la longitud del string.
                cadena = cadena.toUpperCase();  //Devuelve el string en mayúsculas.
                var car;
                var contador = 0;
                var i;
                for (i = 0; i < numchar; i++) {
                    car = cadena.charAt(i);    //recupera el caracter i del string.
                    if ((car === "A") || (car === "E") || (car === "I") || (car === "O") || (car === "U")) {
                        contador++;
                    }
                }
                document.getElementById("mensaje").value = "Número de Vocales: " + contador + ".";
            }
            
        </script>
    </body>
</html>
