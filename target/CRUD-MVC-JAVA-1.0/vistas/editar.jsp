<%-- 
    Document   : editar
    Created on : Jun 23, 2020, 1:32:43 AM
    Author     : Leand
--%>

<%@page import="com.covid.domain.Persona"%>
<%@page import="com.covid.datos.PersonaDaoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Prueba Leandro (EDITAR)</title>
        <!--  jQuery -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
        <!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
        <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />
        <!-- Bootstrap Date-Picker Plugin -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    </head>

    <body>
        <div class="container">

            <div class="col-lg-6">
                <%
                    PersonaDaoImpl daoImpl = new PersonaDaoImpl();
                    int id = Integer.parseInt((String) request.getAttribute("id"));
                    Persona p = (Persona) daoImpl.list(id);
                %>
                
                <div class="text-center">  
                    <img src="img/user-edit-icon.png" class="rounded" width="200" height="200" alt="Editar Persona Responsive image">  
                </div>
                
                <h1 class="text-center text-primary"> ACTUALIZAR DATOS </h1>

                <form action="Controlador">
                    Nombre:<br>
                    <input class="form-control" type="text" name="txtNombre" placeholder="Leandro Leonardo" value="<%= p.getNombre()%>" required="true"> 
                    <br>
                    <div class="form-group"> <!-- Date input -->
                        <label class="control-label" for="date">Fecha de nacimiento*:</label>
                        <input class="form-control" id="date" name="txtFechaDeNacimiento" placeholder="YYYY/MM/DD" type="text" value="<%= p.getFechaDeNacimiento()%>" required="true"/>
                    </div>
                    <br>
                    <input type="hidden" name="txtId" value="<%= p.getId()%>">

                    <input class="btn btn-danger btn-lg" type="submit" name="accion" value="Actualizar"> 
                    <a class="btn btn-warning" href="Controlador?accion=listar">Regresar</a>


                </form>

            </div>

        </div>

        <br>
        <br>
        <footer class="page-footer font-small blue">
            <div class="footer-copyright text-center py-3"> © 2020 Copyright: Leandro Leonardo </a></div>
        </footer>

        <script>
            $(document).ready(function () {
                var date_input = $('input[name="txtFechaDeNacimiento"]');
                var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                var options = {
                    format: 'yyyy/mm/dd',
                    container: container,
                    todayHighlight: true,
                    autoclose: true,
                };
                date_input.datepicker(options);
            });
        </script>
    </body>
</html>
