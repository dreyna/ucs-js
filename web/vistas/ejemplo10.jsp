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
            header {
                padding: 1rem;
                text-align: center;
            }

            .btn {
                padding: 0.5rem 1rem;
                background: #006699;
                border: none;
                color: white;
                cursor: pointer;
            }

            .container {
                min-width: 50vw;
                min-height: 50vh;
                padding: 1rem;
                text-align: center;
            }

            .div {
                width: 400px;
                height: 200px;
                background: #0066cc;
                text-align: center;
                padding: 1rem;
                margin: 0 auto;
                color: #ffffff;
                font-size: 24px;
            }
        </style>
    </head>
    <body>
        <h1>Ejemplo 10</h1>
        <hr>
        <h2>Crear elementos con JavaScript</h2>
        <hr>
        <header>
            <button class="btn">crear nuevo Elemento</button>
        </header>

        <section class="container"></section>
        <script>
            document.querySelector(".btn").addEventListener("click", e => {
                const newElement = document.createElement("div");
                newElement.classList.add("div");
                newElement.textContent = "soy un div creado con javascript";
                document.querySelector(".container").appendChild(newElement);
            });
        </script>
    </body>
</html>
