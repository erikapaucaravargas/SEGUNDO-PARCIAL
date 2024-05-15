<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="com.emergente.modelo.Estudiante" %>
<%
    List<Estudiante> estudiante = (List<Estudiante>) request.getAttribute("estudiante");
%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="row mt-4">
                <div class="col-lg-12 text-center">
                    <h1 class="text-success">TECNOLOGIAS EMERGENTES II</h1>
                    <h2 class="text-dark">ERIKA PAUCARA VARGAS</h2>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-lg-12 text-center">
                    <h1>LISTA ESTUDIANTES</h1>
                    <p><a class="btn btn-primary" href="EstudiantesController?action=add">Nuevo</a></p>
                    <table class="table table-bordered table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>Id</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Seminario</th>
                                <th>Confirmado</th>
                                <th>Fecha</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="item" items="${estudiante}">
                                <tr>
                                    <td>${item.id}</td>
                                    <td>${item.nombre}</td>
                                    <td>${item.apellido}</td>
                                    <td>${item.seminario}</td>
                                    <td>${item.confirmado}</td>
                                    <td>${item.fecha}</td>
                                    <td>
                                        <a class="btn btn-warning btn-sm" href="EstudiantesController?action=edit&id=${item.id}">Editar</a>
                                        <a class="btn btn-danger btn-sm" href="EstudiantesController?action=delete&id=${item.id}">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
