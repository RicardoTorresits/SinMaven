<%-- 
    Document   : NavBar
    Created on : 6 mar. 2025, 12:55:38
    Author     : it-seekers
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Gestión de Personas</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="personas.jsp">Lista de Personas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="AddPersona.jsp">Agregar Persona</a>
                        </li>
                    </ul>
                </div>
            </div>
</nav>