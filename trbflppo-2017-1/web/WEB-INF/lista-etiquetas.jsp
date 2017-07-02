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
        <div>
            <h3>Listagem de Etiquetas</h3>
            <div>
                <div>
                    <table>
                        <tr>
                            <th>Id</th>
                            <th>Autor</th>
                            <th>Tarefa</th>
                            <th>Título</th>
                            <th>Excluir</th>
                        </tr>
                        <c:forEach var="etiqueta" items="${etiquetas}">
                            <tr>
                                <td><a href="editaEtiqueta.html?id=${etiqueta.id}">${etiqueta.id}</a></td>
                                <td>${etiqueta.referenciaAutor.nomeCompleto}</td>
                                <td><${etiqueta.referenciaTarefa.titulo}</td>
                                <td>${etiqueta.titulo}</td>
                                <td><a href="excluiEtiqueta.html?id=${etiqueta.id}">X</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>