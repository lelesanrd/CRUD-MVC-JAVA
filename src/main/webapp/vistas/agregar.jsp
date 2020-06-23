<%-- 
    Document   : agregar
    Created on : Jun 23, 2020, 1:32:35 AM
    Author     : Leand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Prueba Leandro (AGREGAR)</title>
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

                <div class="text-center">  
                    <img src="img/registrar.png" class="max" width="700" height="300" alt="Registrar Persona Responsive image">  
                </div>  

                <form action="Controlador">

                    Nombre*:<br>
                    <input class="form-control" type="text" name="txtNombre" placeholder="Leandro Leonardo" required="true"> 
                    <br>
                    <div class="form-group"> <!-- Date input -->
                        <label class="control-label" for="date">Fecha de nacimiento*:</label>
                        <input class="form-control" id="date" name="txtFechaDeNacimiento" placeholder="YYYY/MM/DD" type="text" required="true"/>
                    </div>
                    <br>
                    <input class="btn btn-primary btn-lg" type="submit" name="accion" value="Agregar"> 
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
