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
        <h1>Ejemplo 7</h1>
        <hr>
        <p>Crea una función que genere 100 números aleatorios entre 1 y 100 que no se repitan y luego muestralos por pantalla</p>

        <script>
            function aleatorio(min, max) {
                var numero = Math.round((Math.random() * (max - min)) + min);
                return numero;
            }
            var numeros = new Array();
            var temp = 0;
            var copia = true;
            var j = 0;
            for (var i = 0; i < 100; i++) {
                do {
                    j = 0;
                    copia = true;
                    temp = aleatorio(1, 100);
                    for (var j = 0; j < numeros.length; j++) {
                        if (temp === numeros[j]) {
                            copia = false;
                        }
                    }
                } while (copia === false);
                numeros[i] = temp;
            }
            numeros.sort(function (a, b) {
                return a - b;
            });
            var cont = 0;
            for (var i = 0; i < numeros.length; i++) {
                document.write("Numero " + cont + ": " + numeros[i] + "<br>");
                cont++;
            }
        </script>
    </body>
</html>
