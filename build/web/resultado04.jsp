<%-- 
    Página de resultado del ejercicio N°04
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Resultado N°04</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
                        <a href="ejercicio01.html" class="text-decoration-none px-3 py-2 d-block"><i
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
                        <a href="#" class="text-decoration-none px-3 py-2 d-block"><i
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
        <div class="content">
            <div class="row col-lg-12 py-5 d-flex align-items-center justify-content-center">
                <div class="container rounded col-lg-6 bg-white">
                    <h3 class="p-2" align='center'><b>MCM - MCD</b></h3>
                    <h4 class="p-2"> Ingrese dos números enteros positivos:</h4>
                    <form action="resultado04.jsp" method="GET">
                        <div class="py-2">
                            <label class="p-2">Ingrese primer número:</label>
                            <span class="p-4"><input type="number" name="numero1" value="" required="" placeholder="Ingrese un numero"/></span>
                        </div>
                        <div class="py-2">
                            <label class="p-2">Ingrese segundo número:</label>
                            <span class="p-2"><input type="number" name="numero2" value="" required="" placeholder="Ingrese un numero"/></span>
                        </div>
                        <div class="text-end align-items-end p-4">
                            <input class="bg-dark text-light rounded"type="submit" value="Calcular" name="btnCalcular" />
                        </div>
                        <div><%
                            int numero1 = Integer.parseInt(request.getParameter("numero1"));
                            int numero2 = Integer.parseInt(request.getParameter("numero2"));
                            int a=numero1,b=numero2;
                            if(numero1>0 && numero2>0){
                                while(numero1!=numero2){
                                    if(numero1>numero2){
                                        numero1 = numero1-numero2;
                                    }else{
                                        numero2 = numero2-numero1;
                                    }
                                }
                                out.println("MCD: "+numero1);
                                out.println("MCM: "+(a*b/numero1));
                            }else{
                                out.println("¡Ingrese números positivos!");
                            }
                            %>
                        </div>
                    </form>
                </div>
                <footer class="text-end">
                    <div>
                        <a href="index.html" style="color:graytext; text-decoration:none"><b>Volver a la página principal</b></a>
                    </div>
                </footer>
            </div>
        </div>

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
</html>
