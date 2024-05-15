<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.emergente.modelo.Estudiante" %>
<%
    Estudiante estudiante = (Estudiante) request.getAttribute("estudiante");
%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Estudiante</title>
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-5">
            <h1 class="text-center">Registro de Estudiante</h1>
            <form action="EstudiantesController" method="post" class="mt-4">
                <input type="hidden" name="id" value="${estudiante.id}" />
                <div class="form-group row">
                    <label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nombre" name="nombre" value="${estudiante.nombre}" required />
                    </div>
                </div>
                <div class="form-group row">
                    <label for="apellido" class="col-sm-2 col-form-label">Apellido</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="apellido" name="apellido" value="${estudiante.apellido}" required />
                    </div>
                </div>
                <div class="form-group row">
                    <label for="seminario" class="col-sm-2 col-form-label">Seminario</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="seminario" name="seminario" value="${estudiante.seminario}" required />
                    </div>
                </div>
                <div class="form-group row">
                    <label for="confirmado" class="col-sm-2 col-form-label">Confirmado</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="confirmado" name="confirmado" value="${estudiante.confirmado}" required />
                    </div>
                </div>
                <div class="form-group row">
                    <label for="fecha" class="col-sm-2 col-form-label">Fecha</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="fecha" name="fecha" value="${estudiante.fecha}" required />
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-10 offset-sm-2">
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </div>
            </form>
        </div>
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
