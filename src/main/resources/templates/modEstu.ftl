<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Práctica #2: CRUD - Modificar Estudiante</title>

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
                <li class="nav-item">
                    <a class="nav-link" href="/">Inicio
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/Agregar">Agregar</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="/Modificar/0">Modificar</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">

    <header class="jumbotron my-4 text-center">
        <h1 class="display-3">Modificar Estudiante</h1>
    </header>
    <hr>
    <form method="post" action="/ModificarList">

        <div class="form-group">
            <label for="nombre">Nombre</label>
            <input type="text" class="form-control"  id="nombre" name="nombre" placeholder="Nombre" value="${Estu.nombre}" required>
        </div>

        <div class="form-group">
            <label for="apellido">Apellido</label>
            <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Apellido" value="${Estu.apellido}" required>
        </div>

        <div class="form-group">
            <label for="matricula">Matricula</label>
            <input type="text" class="form-control" id="matricula" name="matricula" placeholder="Matricula" value='${Estu.matricula?string["0"]}' required readonly>
        </div>

        <div class="form-group">
            <label for="telefono">Teléfono</label>
            <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Telefono" value="${Estu.telefono}" required>
        </div>

        <input type="submit" class="btn btn-primary" value="Guardar Cambios">

    </form>
</div>
<!-- /.container -->

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
