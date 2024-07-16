<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String context = request.getContextPath();%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario artículo</title>
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
<div class="container">
    <div class="header-wrapper">
        <img src="imagenes/flecha-pequena-izquierda.png" style="width: 25px; height: 25px;">
        <h2>Añadir/Editar Artículo</h2>
    </div>
    <div class="card">
        <form>

            <label for="no_inventario">No. de Inventario</label>
            <input type="text" id="no_inventario" name="no_inventario" required>
            <br><br>

            <label for="nombre_articulo">Nombre del Artículo</label>
            <input type="text" id="nombre_articulo" name="nombre_articulo" required>
            <br><br>

            <label for="marca_modelo">Marca y Modelo</label>
            <input type="text" id="marca_modelo" name="marca_modelo">
            <br><br>

            <label for="serie">Serie</label>
            <input type="text" id="serie" name="serie">
            <br><br>

            <label for="especificaciones">Especificaciones</label>
            <input type="text" id="especificaciones" name="especificaciones">
            <br><br>

            <label for="edificio">Edificio</label>
            <select id="edificio" name="edificio">
                <option value="direccion">Dirección</option>
                <option value="docencia1">Docencia 1</option>
                <option value="docencia2">Docencia 2</option>
                <option value="docencia3">Docencia 3</option>
                <option value="docencia4">Docencia 4</option>
            </select>
            <br><br>

            <label for="instalacion">Instalación</label>
            <select id="instalacion" name="instalacion">
                <option value="cc10">CC10</option>
                <option value="salon1">Salón 1</option>
                <option value="aula16">Aula 16</option>
                <option value="cc7">CC7</option>
                <option value="cc2">CC2</option>
            </select>
            <br><br>

            <label for="estado">Estado</label>
            <select id="estado" name="estado">
                <option value="activo">Activo</option>
                <option value="inactivo">Inactivo</option>
            </select>
            <br><br>

            <label for="encargado">Asignado</label>
            <select id="encargado" name="encargado">
                <option value="martha">Martha Fabiola</option>
                <option value="juan">Martín Antonio</option>
            </select>
            <br><br>

            <button type="submit" class="button" style="background-color: forestgreen; width: 150px; height: 35px; margin-top: 13px;">Guardar</button>
        </form>
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