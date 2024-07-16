<%--
  Created by IntelliJ IDEA.
  User: katia
  Date: 12/07/2024
  Time: 10:38 p. m.
  To change this template use File | Settings | File Templates.
--%>
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
    <style>
        .radio-buttons {
            display: flex;
            align-items: center;
        }

        .radio-buttons label {
            margin-right: 20px;
        }

        .radio-buttons input[type="radio"] {
            width: auto;
            margin-right: 5px;
        }
    </style>
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
        <h2>Añadir/Editar Asignado</h2>
    </div>
    <div class="card">
        <div class="form-group">
            <label for="nombre_asignado">Nombre del asignado</label>
            <input type="text" id="nombre_asignado" name="nombre_asignado" required>
        </div>
        <div class="form-group">
            <label for="edificio">Edificio</label>
            <select id="edificio" name="edificio">
                <option value="direccion">Dirección</option>
                <option value="docencia1">Docencia 1</option>
                <option value="docencia2">Docencia 2</option>
                <option value="docencia3">Docencia 3</option>
                <option value="docencia4">Docencia 4</option>
            </select>
        </div>
        <div class="form-group">
            <label for="estado">Estado</label>
            <div class="radio-buttons">
                <label>
                    <input type="radio" id="activo" name="estado" value="activo" required> Activo
                </label>
                <label>
                    <input type="radio" id="inactivo" name="estado" value="inactivo"> Inactivo
                </label>
            </div>
        </div>
        <button type="submit" class="button">Guardar</button>
        </form>
    </div>
</div>
</body>
<script src="script.js"></script>
</html>