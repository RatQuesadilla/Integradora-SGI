<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String context = request.getContextPath();%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de artículos</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=context%>/css/style.css">
    <!-- Agregar DataTables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
</head>
<body style="background-color: #B7BFC2;">
<header class="bg-custom text-white text-center py-2">
    <div class="container">
        <img src="imagenes/logo-blanco-01.png" style="width: 60px; height: 50px;">
        <h1>GESTIÓN DE INVENTARIO</h1>
    </div>
</header>
<nav class="navbar navbar-expand-lg navbar-light bg-custom1">
    <button class="navbar-toggler bg-custom" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mx-auto">
            <li class="nav-item">
                <img src="imagenes/hogar.png">
                <a href="<%=context%>/InicioServlet">INICIO</a>
            </li>
            <li class="nav-item" style="background-color:#05264C">
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
            <li class="nav-item">
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
<div class="container my-4">
    <div class="card">
        <div class="header-container">
            <p class="fs-4 fw-bold">Lista de artículos</p>
            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#añadir">Añadir artículo</button>
        </div>

        <div class="align-buttons">
            <button type="button" class="btn btn-success" id="exportExcel">Exportar a Excel</button>
            <button type="button" class="btn btn-danger" id="exportPDF" style="margin-right: 3px">Exportar a PDF</button>
        </div>
        <div class="table-responsive mt-3">
            <table id="articlesTable" class="table table-hover">
                <thead>
                <tr>
                    <th><input type="checkbox" id="select-all"></th>
                    <th>No. Inventario</th>
                    <th>Nombre</th>
                    <th>Marca y modelo</th>
                    <th>Serie</th>
                    <th>Especificaciones</th>
                    <th>Edificio</th>
                    <th>Instalación</th>
                    <th>Asignado</th>
                    <th>Acciones</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="checkbox" name="seleccionar"></td>
                    <td>5101AM-02-008</td>
                    <td>Armario con estantes</td>
                    <td>SIM</td>
                    <td>S/N</td>
                    <td>Estante metálico</td>
                    <td>Dirección</td>
                    <td>Salón 1</td>
                    <td>Martha Fabiola</td>
                    <td class="acciones">
                        <img src="imagenes/documento.png" data-bs-toggle="modal" data-bs-target="#detallesArticulo">
                        <img src="imagenes/editar.png" data-bs-toggle="modal" data-bs-target="#añadir">
                        <img src="imagenes/basura.png" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!--Modal eliminar-->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Eliminar artículo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ¿Estas seguro de eliminar el artículo?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-danger">Eliminar</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal añadir-->
<div class="modal fade" id="añadir" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen-sm-down">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="añadirUbicacion">Añadir/Editar artículo</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
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
                        <option value="salon1">Salón 1</option>
                        <option value="salon2">Salón 2</option>
                        <option value="salon3">Salón 3</option>
                        <option value="laboratorio">Laboratorio</option>
                        <option value="oficina">Oficina</option>
                    </select>
                    <br><br>
                    <label for="encargado">Encargado</label>
                    <select id="encargado" name="encargado">
                        <option value="martha">Martha Fabiola</option>
                        <option value="juan">Martín Antonio</option>
                    </select>
                    <br><br>
                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-success">Guardar</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!--Modal detalles-->
<div class="modal fade" id="detallesArticulo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="detalles">Detalles de artículo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div>
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
                    <div class="table-responsive mt-3">
                        <table class="table table-hover">
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
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

<!-- Agregar jQuery y DataTables JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<!-- Agregar jsPDF y SheetJS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.16.9/xlsx.full.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jspdf-autotable"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>
    // Inicializar DataTable
    $(document).ready(function() {
        $('#articlesTable').DataTable();
    });

    // Exportar a Excel
    document.getElementById('exportExcel').addEventListener('click', function() {
        var selectedRows = [];
        document.querySelectorAll('input[name="seleccionar"]:checked').forEach(function(checkbox) {
            var row = checkbox.closest('tr');
            var cells = row.querySelectorAll('td');
            var rowData = [];
            cells.forEach(function(cell, index) {
                if (index > 0) { // Ignorar la primera celda (checkbox)
                    rowData.push(cell.textContent.trim());
                }
            });
            selectedRows.push(rowData);
        });
        if (selectedRows.length === 0) {
            alert("No hay filas seleccionadas para exportar.");
            return;
        }

        var wb = XLSX.utils.book_new();
        var ws = XLSX.utils.aoa_to_sheet([
            ["No. Inventario", "Nombre", "Marca y modelo", "Serie", "Especificaciones", "Edificio", "Instalación", "Asignado"]
        ].concat(selectedRows));
        XLSX.utils.book_append_sheet(wb, ws, "Sheet1");
        XLSX.writeFile(wb, 'ListaDeArticulos.xlsx');
    });

    // Exportar a PDF
    document.getElementById('exportPDF').addEventListener('click', function() {
        const { jsPDF } = window.jspdf;
        const doc = new jsPDF();

        var selectedRows = [];
        document.querySelectorAll('input[name="seleccionar"]:checked').forEach(function(checkbox) {
            var row = checkbox.closest('tr');
            var cells = row.querySelectorAll('td');
            var rowData = [];
            cells.forEach(function(cell, index) {
                if (index > 0) { // Ignorar la primera celda (checkbox)
                    rowData.push(cell.textContent.trim());
                }
            });
            selectedRows.push(rowData);
        });
        if (selectedRows.length === 0) {
            alert("No hay filas seleccionadas para exportar.");
            return;
        }

        doc.autoTable({
            head: [['No. Inventario', 'Nombre', 'Marca y modelo', 'Serie', 'Especificaciones', 'Edificio', 'Instalación', 'Asignado']],
            body: selectedRows,
            theme: 'grid',
            styles: { fontSize: 8 }
        });

        doc.save('ListaDeArticulos.pdf');
    });

    // Seleccionar/Deseleccionar todas las filas
    document.getElementById('select-all').addEventListener('change', function() {
        const checkboxes = document.querySelectorAll('input[name="seleccionar"]');
        checkboxes.forEach(checkbox => {
            checkbox.checked = this.checked;
        });
    });
</script>
<script src="<%=context%>/js/script.js"></script>
</body>
</html>
