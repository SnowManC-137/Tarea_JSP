<%-- 
    Resultado del ejercicio n°03

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado N°03</title>
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
                    <li class="" id="caja2">
                        <a href="ejercicio01.html" class="text-decoration-none px-3 py-2 d-block"><i
                                class="fas fa-clipboard-user  ps-2 pe-4"></i>
                            Ejercicio 1</a>
                    </li>
                    <li class="" id="caja3">
                        <a href="ejercicio02.html" class="text-decoration-none px-3 py-2 d-block"><i
                                class="fas fa-clipboard-user ps-2 pe-4"></i>
                            Ejercicio 2</a>
                    </li>
                    <li class="active" id="caja4">
                        <a href="#" class="text-decoration-none px-3 py-2 d-block"><i
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
                <div align="center" class="tittle2">REGISTRO ALUMNO FICSA</div>
                    <br>
                        <%
                        double pc1=0,pc2=0,e1=0,e2=0, promedio=0;
                        String nombre, apellido;
        
                        nombre = request.getParameter("nombre");
                        apellido = request.getParameter("apellido");
                        pc1 = Double.parseDouble(request.getParameter("pc1"));
                        pc2 = Double.parseDouble(request.getParameter("pc2"));
                        e1 = Double.parseDouble(request.getParameter("e1"));
                        e2 = Double.parseDouble(request.getParameter("e2"));
        
                        //Calculo del promedio de nota
                        promedio = (pc1+pc2+e1+e2)/4;
        
                        //Resultados
            
                        out.print("Nombres: "+nombre+"<br>");
                        out.print("Apellidos: "+apellido+"<br>");
                        out.print("Sus notas: <br>Practica Calificada 1: "+pc1+"<br>Practica Calificada 2: "+pc2+"<br>Examen Parcial: "+e1+ "<br>Examen Final: "+e2+"<br>");
                        out.print("El promedio del alumno en el curso es: "+promedio+"<br>");
                        //condicion del estudiante
                        if(promedio>0 && promedio<11.5){
                            out.print("La condicion del alumno es Desaprobado");
                        }else{
                            out.print("La condicion del alumno es Aprobado");
                        }        
                        %>
                    </div>
                </div>            
            </div>
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
    <footer class="text-end">
        <div>
            <a href="ejercicio03.html" style="color:graytext; text-decoration:none"><b>Volver a página anterior</b><a/><br>
        </div>
    </footer>
    <style>
        body{
            display: flow;
            height: 110vh;
            justify-content: center;
            align-content: center;
            background: rgb(110, 192, 188);
        }
        .container{
            max-width: 620px;
            background: #fff;
            padding: 25px 30px;
            border-radius: 5px;
        }
        .container .tittle2{
            font-size: 25px;
            font-weight: 700;       
        }
    </style>
</html>
