<%-- 
    Document   : lista-etiquetaautor
    Created on : 24/06/2017, 19:26:30
    Author     : Paulo
--%>

<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Etiquetas por Autor</title>
    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>
        <div>
            <h3>Listagem de Etiquetas por Autor</h3>
            <div>
                <div>
                    <form method="POST">
                        <table>
                            <tr>
                                <th>Nome do autor</th>
                                    <select name="id" style="width: 300px">  
                                        <c:forEach var="usuario" items="${usuarios}">  
                                            <option value="${usuario.id}">${usuario.nomeCompleto}</option>  
                                        </c:forEach>  
                                    </select><br>
                            <th>Título da etiqueta</th><br>
                            </tr>
                            <c:forEach var="etiqueta" items="${etiquetaAutor}">
                                <tr>
                                    <td>${etiqueta.referenciaAutor.nomeCompleto}</td>
                                    <td>${etiqueta.titulo}</td>
                                </tr>
                            </c:forEach>   
                        </table>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="jspf/rodape.jspf" %>