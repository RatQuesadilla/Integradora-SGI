<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String context = request.getContextPath();%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles de artículos</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%=context%>/css/style.css">
</head>
<body style="background-color: #B7BFC2;">
<header>
    <div>
        <img src="imagenes/logo-blanco-01.png" style="width: 60px; height: 50px;">
        <h1>GESTIÓN DE INVENTARIO</h1>
    </div>
</header>
<nav>
    <div class="nav-item">
        <img src="imagenes/hogar.png">
        <a href="<%=context%>/InicioServlet">INICIO</a>
    </div>
    <div class="nav-item">
        <img src="imagenes/articulo.png">
        <a href="<%=context%>/ArticuloServlet">ARTÍCULOS</a>
    </div>
    <div class="nav-item">
        <img src="imagenes/usuarios.png">
        <a href="<%=context%>/AsignadosServlet">ASIGNADOS</a>
    </div>
    <div class="nav-item">
        <img src="imagenes/ubicaciones.png">
        <a href="<%=context%>/UbicacionServlet">UBICACIONES</a>
    </div>
    <div class="nav-item">
        <img src="imagenes/movimientos.png">
        <a href="<%=context%>/HistorialServlet">MOVIMIENTOS</a>
    </div>
    <div class="nav-item">
        <img src="imagenes/usuario.png">
        <a href="<%=context%>/UsuarioServlet">USUARIOS</a>
    </div>
    <div class="nav-item">
        <img src="imagenes/salir.png">
        <a href="<%=context%>/SalirServlet">SALIR</a>
    </div>
</nav>
<div id="content" class="container">
    <!-- Contenido dinámico -->
</div>
<div class="container">
    <div class="details-header">
        <img src="imagenes/flecha-pequena-izquierda.png" style="width: 25px; height: 25px;">
        <h2>Detalles del Artículo</h2>
    </div>
    <div class="card">
        <h3>Información del Artículo</h3>
        <p><strong>No. de Inventario:</strong> 5101AM-02-008</p>
        <p><strong>Nombre:</strong> Armario con estantes</p>
        <p><strong>Marca y Modelo:</strong> SIM</p>
        <p><strong>Serie:</strong> S/N</p>
        <p><strong>Especificaciones:</strong> Estante metálico</p>
        <p><strong>Edificio:</strong> Dirección</p>
        <p><strong>Instalación:</strong> Salón 1</p>
        <p><strong>Encargado:</strong> Martha Fabiola</p>
    </div>
    <div class="card">
        <h3>Historial</h3>
        <table class="table">
            <thead>
            <tr>
                <th>Fecha</th>
                <th>Tipo de Movimiento</th>
                <th>Usuario</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>05/04/2024</td>
                <td>Asignación</td>
                <td>Admin</td>
            </tr>
            <!-- Más filas con el historial -->
            </tbody>
        </table>
    </div>
</div>
</body>
<script>
    document.querySelectorAll('.nav-item').forEach(item => {
        item.addEventListener('click', event => {

            document.querySelectorAll('.nav-item').forEach(navItem => {
                navItem.classList.remove('active');
            });

            event.currentTarget.classList.add('active');

            const target = event.currentTarget.getAttribute('data-target');
            const content = document.getElementById('content');
        });
    });
</script>
</html>