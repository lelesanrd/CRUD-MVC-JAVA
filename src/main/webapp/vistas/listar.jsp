<%-- 
    Document   : lista
    Created on : Jun 23, 2020, 1:32:27 AM
    Author     : Leand
--%>

<%@page import="com.covid.datos.PersonaDaoImpl"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.covid.datos.PersonaDao"%>
<%@page import="com.covid.domain.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Prueba Leandro (LISTAR)</title>
    </head>

    <body>
        <div class="container">

            <div class="text-center">  
                <img src="img/registro.gif" class="rounded" width="200" height="200" alt="REGISTRAR DE PERSONA Responsive image">  
            </div>
            <br>
            <h1 class="text-center text-primary">REGISTROS</h1>
            <a class="btn btn-success" href="Controlador?accion=add">Nuevo registro</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Fecha de nacimiento</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                </thead>
                <%
                    PersonaDaoImpl pdao = new PersonaDaoImpl();
                    List<Persona> list = pdao.listar();
                    Iterator<Persona> iterable = list.iterator();
                    Persona p = null;
                    while (iterable.hasNext()) {
                        p = iterable.next();
                %>
                <tbody>
                    <tr>
                        <td class="text-center"> <%= p.getId()%>                   </td>
                        <td> <%= p.getNombre()%>               </td>
                        <td class="text-center"> <%= p.getFechaDeNacimiento()%>    </td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editar&id=<%= p.getId()%>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&id=<%= p.getId()%>">Remover</a>
                        </td>
                    </tr>
                    <% }%>
                </tbody>
            </table>

        </div>
        <br>
        <br>
        <footer class="page-footer font-small blue">
            <div class="footer-copyright text-center py-3"> © 2020 Copyright: Leandro Leonardo </a></div>
        </footer>
        
    </body>
</html>
