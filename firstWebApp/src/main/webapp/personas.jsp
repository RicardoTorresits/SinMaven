<%-- 
    Document   : personas
    Created on : 5 mar. 2025, 17:49:37
    Author     : it-seekers
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <% 
List<Persona> personas = (List<Persona>) request.getSession().getAttribute("listaPersonas");

for(Persona persona : personas){
        %>
        <%=persona.getNombre() %> //y los demás atributos
        <% } %>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</html>
