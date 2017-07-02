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
        <div>
            <h3>Listagem de Etiquetas por Autor e Título</h3>
            <div>
                <div>
                    <form method="POST">
                        <table>
                            <tr>
                            <p>
                                <label>Nome do Autor : </label>
                                <select name="id" style="width: 313px">  
                                    <c:forEach var="usuario" items="${usuarios}">  
                                        <option value="${usuario.id}">${usuario.nomeCompleto}</option>  
                                    </c:forEach>  
                                </select>
                            </p>
                            <p>
                                <label>Titulo da Etiqueta : </label>
                                <select name="titulo" style="width: 300px">  
                                    <c:forEach var="etiqueta" items="${etiquetas}">  
                                        <option value="${etiqueta.id}">${etiqueta.titulo}</option>  
                                    </c:forEach>  
                                </select>
                            </p>
                                <th>Id Etiqueta</th>
                                <th>Id Autor</th>
                                <th>Nome Autor</th>
                                <th>Titulo Etiqueta</th>
                                <th>Titulo Tarefa</th>
                            </tr>
                            <c:forEach var="etiqueta" items="${etiquetasAutorTitulo}">
                                <tr>
                                    <td>${etiqueta.id}</td>
                                    <td>${etiqueta.referenciaAutor.id}</td>
                                    <td>${etiqueta.referenciaAutor.nomeCompleto}</td>
                                    <td>${etiqueta.titulo}</td>
                                    <td>${etiqueta.referenciaTarefa.titulo}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </form>
                </div>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>