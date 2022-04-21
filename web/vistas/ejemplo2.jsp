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
            }
            .boton{
                width: 100px;
                height: 30px;
            }
            ol{
                text-align: center;
                margin: 0 auto;
            }
            li{
                width: 100px;
                text-align: left;
                color: blueviolet;
            }
            div{
                width: 100px;
                margin: 0 auto;
                margin-top: 30px;                    
            }
            li{
                font-size: 24px;
                font-family: sans-serif;
            }
        </style>
    </head>
    <body>
        <h1>Ejemplo 2</h1>
        <hr>
        <input type="text" class="caja" id="fruta"  placeholder="Frutas" required="">
        <button class="boton" onclick="agregar()">Agregar</button>
        <div >
            <ol id="lista"></ol>
        </div>
        
        <script>
            function agregar() {
                var f = document.getElementById("fruta").value;
                var list = document.getElementById("lista");
                var li = document.createElement("li");
                let text = document.createTextNode(f);
                li.appendChild(text);
                list.appendChild(li);
                document.getElementById("fruta").value="";
                document.getElementById("fruta").focus();
            }
        </script>
    </body>
</html>
