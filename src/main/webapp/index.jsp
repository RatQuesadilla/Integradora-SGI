<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String context = request.getContextPath();%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gestor de Inventario</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="<%=context%>/css/style.css"></head>
<body style="background-color: #A7B0B7;">

<header class="bg-custom text-white text-center py-2">
  <div class="container">
    <img src="imagenes/logo-blanco-01.png" style="width: 60px; height: 50px;">
    <h1>GESTIÓN DE INVENTARIO</h1>
  </div>
</header>

<div class="container" style="font-family: 'Poppins', sans-serif !important;">
  <div class="card" style="background-color: #FFFFFF; border-color: #FFFFFF">
    <div class="form-container">
      <h3>Inicio de sesión</h3>
      <form action="<%=context%>/LoginServlet" method="post">
        <label for="name">Nombre/Correo electrónico:</label>
        <input type="text" id="name" placeholder="Ingrese su nombre" name="username">
        <label for="password">Password:</label>
        <input type="password" id="password" placeholder="Ingrese su contraseña" name="password">
        <button type="submit" class="btn btn-success">Iniciar Sesión</button>
      </form>
    </div>
  </div>
</div>
<div class="container">
  <div class="row justify-content-center align-items-center">
    <div class="col-12 col-md-6">
      <div class="text-center">
        <link rel="shortcut icon" href="<%=context%>/src/img/app_icon.png" type="image/x-icon">
        <img src="<%=context%>/imagenes/logo.png" alt="Logo UTEZ" style="height: 200px">
      </div>
    </div>
  </div>
</div>
</body>
<script src="script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</html>