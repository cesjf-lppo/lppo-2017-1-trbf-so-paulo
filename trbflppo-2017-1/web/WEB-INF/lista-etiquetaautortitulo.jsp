<%-- 
    Document   : lista-etiquetaautortitulo
    Created on : 24/06/2017, 20:03:24
    Author     : Paulo
--%>

<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Etiquetas por Autor e Título</title>
    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>

        <div class="panel panel-primary" style="margin:20px;">
            <div class="panel-heading">
                <h3 class="panel-title" style="text-align: center;">Listagem de Etiquetas por Autor e Título</h3>
            </div> 
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <tr>
                            <th>Id</th>
                            <th>Id Autor</th><br>
                            <th>Nome Autor</th><br>
                            <th>Titulo tarefa</th><br>
                        </tr>
                        <c:forEach var="etiqueta" items="${etiquetas}">
                            <tr>
                                <td>${etiqueta.id}</a></td>
                                <td>${etiqueta.usuario.id}</td>
                                <td>${etiqueta.usuario.nomeCompleto}</td>
                                <td>${etiqueta.tarefa.titulo}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
                <br>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>