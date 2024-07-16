<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String context = request.getContextPath();%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestor de Inventario - Gestión de Usuarios</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=context%>/css/style.css">
    <style>
        .bg-custom {
            background-color: #029575 !important;
        }
    </style>
</head>
<body style="background-color: #B7BFC2;">

<header class="bg-custom text-white text-center py-2">
    <div class="container">
        <img src="imagenes/logo-blanco-01.png" style="width: 60px; height: 50px;">
        <h1>GESTIÓN DE INVENTARIO</h1>
    </div>
</header>

<nav class="navbar navbar-expand-lg navbar-light bg-custom1">
    <button class="navbar-toggler bg-custom" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mx-auto">
            <li class="nav-item">
                <img src="imagenes/hogar.png">
                <a href="<%=context%>/InicioServlet">INICIO</a>
            </li>
            <li class="nav-item">
                <img src="imagenes/articulo.png">
                <a href="<%=context%>/ArticuloServlet">ARTÍCULOS</a>
            </li>
            <li class="nav-item">
                <img src="imagenes/usuarios.png">
                <a href="<%=context%>/AsignadosServlet">ASIGNADOS</a>
            </li>
            <li class="nav-item">
                <img src="imagenes/ubicaciones.png">
                <a href="<%=context%>/UbicacionServlet">UBICACIONES</a>
            </li>
            <li class="nav-item">
                <img src="imagenes/movimientos.png">
                <a href="<%=context%>/HistorialServlet">MOVIMIENTOS</a>
            </li>
            <li class="nav-item" style="background-color:#05264C">
                <img src="imagenes/usuario.png">
                <a href="<%=context%>/UsuarioServlet">USUARIOS</a>
            </li>
            <li class="nav-item">
                <img src="imagenes/salir.png">
                <a href="<%=context%>/SalirServlet">SALIR</a>
            </li>
        </ul>
    </div>
</nav>

<div id="content" class="container my-4">
    <div class="card">
        <p class="fs-4 fw-bold">Gestión de Usuarios</p>
        <div class="header-container">
            <p class="fs-5 fw-bold">Lista de usuarios</p>
            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#añadir">Añadir usuarios</button>
        </div>
        <div class="table-responsive mt-3">
            <table id="articlesTable" class="table table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Acciones</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Daniel León</td>
                    <td>20233TN175@utez.edu.m</td>
                    <td>
                        <div class="boton-modal" style="display: flex; justify-content: center;">
                            <div class="acciones">
                                <img src="imagenes/editar.png" alt="Editar">
                                <img src="imagenes/basura.png" data-bs-toggle="modal" data-bs-target="#exampleModal" alt="Eliminar">
                            </div>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar usuario</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ¿Estás seguro de eliminar el Usuario?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-danger">Eliminar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="añadir" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="añadirUbicacion">Añadir/Editar usuario</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <label for="nombreU">Nombre</label>
                    <input type="text" name="nombreU" id="nombreU" placeholder="Ingrese el nombre del usuario" required>
                    <br><br>
                    <label for="correo">Correo</label>
                    <input type="text" name="correo" id="correo" placeholder="Ingrese el correo del nuevo usuario" required>
                    <br><br>

                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-success">Guardar</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="<%=context%>/js/script.js"></script>
</html>