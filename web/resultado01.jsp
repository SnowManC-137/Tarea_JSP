<%-- 
    Resultado del ejercicio n°01
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Resultdo N°01</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="sidebar" id="side_nav">
            <div class="toggle-btn px-2">
                <button class="btn d-block close-btn px-1 py-0 text-dark"><i class="fal fa-stream"></i></button>
            </div>
            <div class="header-box px-3 pt-3 pb-4">
                <h1 class="fs-4">
                    <span class="bg-white text-dark rounded shadow px-2 me-2">NT</span>
                    <span class="text-white">Net Team</span>
                </h1>
            </div>
            <div class="sidebar-navigation">
                <ul class="list-unstyled px-2">
                    <li class="" id="caja1">
                        <a href="index.html" class="text-decoration-none px-3 py-2 d-block"><i
                                class="fas fa-home-alt ps-2 pe-3"></i>
                            Página de inicio</a>
                    </li>
                    <li class="active" id="caja2">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block"><i
                                class="fas fa-clipboard-user  ps-2 pe-4"></i>
                            Ejercicio 1</a>
                    </li>
                    <li class="" id="caja3">
                        <a href="ejercicio02.html" class="text-decoration-none px-3 py-2 d-block"><i
                                class="fas fa-clipboard-user ps-2 pe-4"></i>
                            Ejercicio 2</a>
                    </li>
                    <li class="" id="caja4">
                        <a href="ejercicio03.html" class="text-decoration-none px-3 py-2 d-block"><i
                                class="fas fa-clipboard-user ps-2 pe-4"></i>
                            Ejercicio 3</a>
                    </li>
                    <li class="" id="caja5">
                        <a href="" class="text-decoration-none px-3 py-2 d-block"><i
                                class="fas fa-clipboard-user ps-2 pe-4"></i>
                            Ejercicio 4</a>
                    </li>
                    <li class="" id="caja6">
                        <a href="ejercicio05.html" class="text-decoration-none px-3 py-2 d-block"><i
                                class="fas fa-clipboard-user ps-2 pe-4"></i>
                            Ejercicio 5</a>
                    </li>
                    <hr class="text-white mx-2 ">
                    <ul class="list-unstyled">
                        <li class="" id="caja7">
                            <a href="about.html" class="text-decoration-none px-3 py-2 d-block"><i
                                    class="fas fa-address-card ps-2 pe-4"></i>
                                Sobre nosotros</a>
                        </li>
                    </ul>
                </ul>
            </div>
        </div>
        <div class="row py-5">
            <div class="container">
                <div align="center" class="tittle">Resultado del test</div>
                <br>
                <%
                int temperature = Integer.parseInt(request.getParameter("temperature"));
                String fatigue = request.getParameter("fatigue");
                String smell = request.getParameter("smell");
                String taste = request.getParameter("taste");
            
                if(temperature >= 38){
                    if("si".equalsIgnoreCase(fatigue) && "si".equalsIgnoreCase(smell) && "si".equalsIgnoreCase(taste)){
                        out.println("Usted tiene COVID-19");
                    } else if("si".equalsIgnoreCase(fatigue) && "si".equalsIgnoreCase(smell) && "no".equalsIgnoreCase(taste)){
                        out.println("Usted debe realizarse una prueba de sangre");
                    } else if("si".equalsIgnoreCase(fatigue) && "no".equalsIgnoreCase(smell) && "si".equalsIgnoreCase(taste)){
                        out.println("Usted debe realizarse una prueba de sangre");
                    } else if("no".equalsIgnoreCase(fatigue) && "si".equalsIgnoreCase(smell) && "si".equalsIgnoreCase(taste)){
                        out.println("Usted debe realizarse una prueba de sangre");
                    } else {
                        out.println("Usted no tiene COVID-19");
                    }
                } else {
                        out.println("Usted no tiene COVID-19");
                }
                %>
            </div>
        </div>

        <footer class="text-end">
            <div>
                <a href="index.html" style="color:graytext; text-decoration:none"><b>Volver a la página principal</b></a>
                <br>
                <a href="ejercicio01.html" style="color:graytext; text-decoration:none"><b>Volver a página anterior</b><a/>
            </div>
        </footer>

        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous">
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
                    const btn = document.querySelector('.toggle-btn');
                    btn.addEventListener('click', function () {
                        document.getElementById('side_nav').classList.toggle('active');
                    });
                    $(" .sidebar ul li").on('click', function () {
                        $(" .sidebar ul li.active").removeClass('active');
                        $(this).addClass('active');
                    })
        </script>
    </body>
    <style>
        body{
            display: flow;
            height: 110vh;
            justify-content: center;
            align-content: center;
            background-color: rgb(110, 192, 188);
        }
        .container{
            max-width: 620px;
            width: 100%;
            background: #fff;
            padding: 25px 30px;
            border-radius: 5px;
        }
        .container .tittle{
            font-size: 25px;
            font-weight: 500;
            position: relative;
        }
        .container .tittle::before{
            content: '';
            position: absolute;
            height: 3px;
            width: 30px;
        }
        .container .tittle2{
            font-size: 20px;
            font-weight: 500;
        }
    </style>
</html>
