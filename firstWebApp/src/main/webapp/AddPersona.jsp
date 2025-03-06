<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Agregar Persona</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">
        <%@ include file="NavBar.jsp" %>
        <div class="container mt-5">
            <div class="card shadow-lg">
                <div class="card-header bg-success text-white text-center">
                    <h2>Agregar Nueva Persona</h2>
                </div>
                <div class="card-body">
                    <form action="SvPersona" method="POST">
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                        </div>
                        <div class="mb-3">
                            <label for="edad" class="form-label">Edad</label>
                            <input type="number" class="form-control" id="edad" name="edad" required>
                        </div>
                        <div class="mb-3">
                            <label for="correo" class="form-label">Correo</label>
                            <input type="email" class="form-control" id="correo" name="correo" required>
                        </div>
                        <div class="text-center">
                            <button  type="submit" class="btn btn-success">Guardar</button>
                            <a href="personas.jsp" class="btn btn-secondary">Volver</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
