<%-- 
    Document   : lista-etiquetas
    Created on : 24/06/2017, 19:11:53
    Author     : Paulo
--%>

<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Etiquetas</title>
    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>

        <div class="panel panel-primary" style="margin:20px;">
            <div class="panel-heading">
                <h3 class="panel-title" style="text-align: center;">Listagem de Etiquetas</h3>
            </div> 
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <tr>
                            <th>Id</th>
                            <th>Autor</th><br>
                            <th>Tarefa</th><br>
                            <th>Título</th><br>
                            <th>Ações</th>
                        </tr>
                        <c:forEach var="etiqueta" items="${etiquetas}">
                            <tr>
                                <td><a href="editarEtiquetas.html?id=${etiqueta.id}">${etiqueta.id}</a></td>
                                <td><a href="listaUsuarios.html?id=${etiqueta.referenciaAutor.id}">${etiqueta.referenciaAutor.nomeCompleto}</td>
                                <td><a href="listarTarefas.html?id=${etiqueta.referenciaTarefa.id}">${etiqueta.referenciaTarefa.titulo}</td>
                                <td>${etiqueta.titulo}</td>
                                <td><a href="excluirEtiqueta.html?id=${etiqueta.id}">Excluir;</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
                <br>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>