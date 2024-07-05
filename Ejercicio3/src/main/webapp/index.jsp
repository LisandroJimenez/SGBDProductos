
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <link href="styles.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark fixed-top position-relative">
            <div class="container-fluid">
                <a class="navbar-brand" href="./index.jsp">Sistemas de Gestión de Productos</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Sistemas de Gestión de Productos</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="./index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./formulario-productos/formulario-productos.jsp">Formulario</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./lista-productos/lista-productos.jsp">Lista de Productos</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false">
            <div class="carousel-inner">
                <div class="carousel-item active  w-100">
                    <img src="./assets/image/Pan.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="./assets/image/Ropa.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="./assets/image/Vegetales.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded d-flex justify-content-center">
                <h1>Te ofrecemos Varios Productos</h1>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <div class="d-flex justify-content-start "  id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Productos</h2>
                    <h3 class="section-subheading text-muted">Te ofrecemos varias categorías de productos</h3>
                </div>
                <div class="row ">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">

                            <div class="card text-center" style="width: 18rem;">
                                <img src="./assets/image/frutas-verduras.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Frutas y Frescas</h5>
                                    <p class="card-text">Frutas y verduras frescas y nutritivas, para degustar</p>
                                </div>
                            </div> 

                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 2-->
                        <div class="portfolio-item">
                            <div class="card text-center" style="width: 18rem;">
                                <img src="./assets/image/Carne.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Carnes Frescas</h5>
                                    <p class="card-text">Carnes rojas, frescas listas para cocinar</p>
                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 3-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
                            </a>
                            <div class="portfolio-caption">
                                <div class="card text-center" style="width: 18rem;">
                                    <img src="./assets/image/Hamburguesa.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Comida Rápida</h5>
                                        <p class="card-text">Tu comida favorita preparada en 3 minutos</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <!-- Portfolio item 4-->
                        <div class="portfolio-item">

                            <div class="portfolio-caption">
                                <div class="card text-center" style="width: 18rem;">
                                    <img src="./assets/image/Bebidas.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Bebidas</h5>
                                        <p class="card-text">bebidas de cualquier tipo, encuentra tu bebida favorita en nuestras tiendas</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 5-->
                        <div class="portfolio-item">
                            <div class="portfolio-caption">

                                <div class="card text-center" style="width: 18rem;">
                                    <img src="./assets/image/Electronicos.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Dispositivos Electrónicos</h5>
                                        <p class="card-text">Todos nuestros dispositivos cuentan con un gran rendimiento, encuentra el tuyo!!</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <!-- Portfolio item 6-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal6">
                            </a>
                            <div class="portfolio-caption">
                                <div class="card text-center" style="width: 18rem;">
                                    <img src="./assets/image/almendra.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Snacks</h5>
                                        <p class="card-text">Snacks para degustar en tiempos libres</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
