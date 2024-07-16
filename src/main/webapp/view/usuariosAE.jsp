<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String context = request.getContextPath();%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestor de Inventario - Añadir/Editar Usuario</title>
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
        <h2>Añadir/editar usuario</h2>
    </div>

    <div class="card">
        <form id="userForm">
            <label for="nombre">Nombre</label>
            <input type="text" id="nombre" name="nombre" required>
            <br/><br/>
            <label for="correo">Correo</label>
            <input type="email" id="correo" name="correo" required>
            <br/><br/>
            <label>Rol</label>
            <select id="rol" required>
                <option>Administrador</option>
                <option>Usuario</option>
            </select>
            <br/><br/>
            <button type="submit" style="background-color: forestgreen; width: 150px; height: 35px; margin-top: 13px;">Guardar</button>
        </form>
    </div>
</div>
</body>
</html>
