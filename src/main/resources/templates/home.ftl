<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Práctica #2 - CRUD</title>

    <!-- Bootstrap core CSS -->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/main.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Programación Web - Práctica #2: CRUD - Adonis A. Veloz</a>
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

      <!-- Jumbotron Header -->
      <header class="jumbotron my-4 text-center">
        <h1 class="display-3">PRÁCTICA #2: CRUD</h1>
        <p class="lead">Presentado por:</p>
        <p class="lead">  Adonis A. Veloz     -   20140452</p>
      </header>

      <!-- Page Features -->
        <div class="bg-primary text-center text-white">
            <#if listSize>
                <table class="table">
                    <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Matricula</th>
                        <th>Teléfono</th>
                    </tr>
                    </thead>
                    <tbody>
                        <#assign i = 0>

                        <#list listEstudiante as Estu>
                        <tr class="animated fadeInUp">
                            <td>${Estu.nombre}</td>
                            <td>${Estu.apellido}</td>
                            <td>${Estu.matricula?string["0"]}</td>
                            <td>${Estu.telefono}</td>
                            <td><a href="/VisualizarEstudiante/${i}"  class="btn btn-light" role="button">Ver</a></td>
                            <td><a href="/Modificar/${i}" class="btn btn-light" role="button">Modificar</a></td>
                            <td><a href="/Eliminar/${i}"  class="btn btn-light" role="button">Borrar</a></td>
                        </tr>
                            <#assign i++>
                        </#list>
                    </tbody>
                </table>
            </#if>
        </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
