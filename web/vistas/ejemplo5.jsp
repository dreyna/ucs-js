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
                width: 200px;
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
                width: 425px;
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
        <h1>Ejemplo 5</h1>
        <hr>
        <h2>Arreglos en JavaScript</h2>
        <hr>
        <input type="text" class="caja" id="nombre"  placeholder="Nombre" required="" onclick="mensaje()">
        <input type="text" class="caja" id="contador"  disabled="" ><br>
        <button class="boton" onclick="agregar()">Agregar</button><br>
        <div class="datos"></div>
        <script>
            var arreglo = "nombres=[";
            function mensaje() {
                alert("Ingresar 5 nombres de personas");
                document.getElementById("nombre").focus();
            }
            var nombres = new Array();
            var c = 0;
            document.querySelector("#contador").value=c;
            function agregar() {
                alert("si");
                c++;
                var nombre = document.getElementById("nombre").value;
                if (c <= 5) {
                    nombres.push(nombre);
                    document.getElementById("contador").value = c;
                    console.log(nombres);
                    document.getElementById("nombre").focus();
                    document.getElementById("nombre").value="";
                } else {
                    alert("Listo");
                    listar();
                    document.querySelector(".datos").innerHTML = "<h3>"+arreglo+"</h3>";
                }
                
            }
            function listar(){
                
                for(var i=0;i<nombres.length;i++){
                    if(i === nombres.length-1){
                        arreglo+="'"+nombres[i]+"']";
                    }else{
                    arreglo+="'"+nombres[i]+"', ";
                    }
                }
            }
        </script>
    </body>
</html>
