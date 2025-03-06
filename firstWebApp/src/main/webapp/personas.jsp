
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.List"%>
<%@page import ="com.mycompany.models.Persona"%>
<%@page import ="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Personas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-light">
        <%@ include file="NavBar.jsp" %>
        <div class="container mt-5">
            <div class="card shadow-lg">
                <div class="card-header bg-primary text-white text-center">
                    <h2>Lista de Personas</h2>
                </div>
                <div class="card-body">
                    <table class="table table-striped table-hover">
                        <thead class="table-dark">
                            <tr>
                                <th>Nombre</th>
                                <th>Edad</th>
                                <th>Correo</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                            List<Persona> personas = new ArrayList<>();
                            personas = (List<Persona>) request.getSession().getAttribute("ListaPersonas");
                                for(Persona persona : personas){
                            %>
                            <tr>
                                <td><%=persona.getNombre() %></td>
                                <td><%=persona.getEdad() %></td>
                                <td><%=persona.getCorreo() %></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
