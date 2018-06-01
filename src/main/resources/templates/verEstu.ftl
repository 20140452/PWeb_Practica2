<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Práctica #2: CRUD - Mostrar Estudiante</title>

    <!-- Bootstrap core CSS -->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/main.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Práctica #2: CRUD - Adonis A. Veloz</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Inicio
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/Agregar">Agregar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/Modificar/0">Modificar</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">
    <header class="jumbotron my-4 text-center">
        <h1 class="display-3">Estudiante: </span>${Estu.matricula?string["0"]}</span> </h1>
    </header>
    <hr>
    <div class="card">
        <div class="card-body">
            <ul class="list-group">
                <li class="list-group-item"><span class="font-weight-bold">Matricula: </span>${Estu.matricula?string["0"]}</span></li>
                <li class="list-group-item"><span class="font-weight-bold">Nombre: </span>${Estu.nombre}</li>
                <li class="list-group-item"><span class="font-weight-bold">Apellido: </span>${Estu.apellido}</li>
                <li class="list-group-item"><span class="font-weight-bold">Teléfono: </span>${Estu.telefono}</li>
            </ul>
        </div>
    </div>
</div>
<!-- /.container -->

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
