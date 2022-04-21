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
        <h1>Ejemplo 3</h1>
        <hr>
        <input type="text" class="caja" id="producto"  placeholder="Nombre Producto" required=""><br>
        <input type="number" class="caja" id="precio"  placeholder="Precio" required=""><br><!-- comment -->
        <input type="number" class="caja" id="stock"  placeholder="Stock" required=""><br>
        <button class="boton" onclick="agregar()">Agregar</button><br>
        <table id="tablita" border="1">
            <thead>
                <tr>
                    <th>#</th>
                    <th>PRODUCTO</th>
                    <th>PRECIO</th>
                    <th>STOCK</th>
                </tr>
            </thead>
            <tbody id="datos">

            </tbody>
        </table>
        <script>
            var cont = 1;
            function agregar() {

                var producto = document.getElementById("producto").value;
                var precio = document.getElementById("precio").value;
                var stock = document.getElementById("stock").value;
                var tbody = document.getElementById("datos");
                var tr = document.createElement("tr");
                /*let td1 = document.createTextNode(f);*/
                var td0 = document.createElement("td");
                var td1 = document.createElement("td");
                var td2 = document.createElement("td");
                var td3 = document.createElement("td");
                var text1 = document.createTextNode(cont);
                var text2 = document.createTextNode(producto);
                var text3 = document.createTextNode(precio);
                var text4 = document.createTextNode(stock);
                td0.appendChild(text1);
                td1.appendChild(text2);
                td2.appendChild(text3);
                td3.appendChild(text4);
                tr.appendChild(td0);
                tr.appendChild(td1);
                tr.appendChild(td2);
                tr.appendChild(td3);
                tbody.appendChild(tr);
                /*document.getElementById("fruta").value="";
                 document.getElementById("fruta").focus();*/
                cont++;
            }
        </script>
    </body>
</html>
