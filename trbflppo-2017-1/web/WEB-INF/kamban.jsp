<%-- 
    Document   : kamban
    Created on : 24/06/2017, 20:50:13
    Author     : Paulo
--%>

<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kamban</title>

    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>
        <div>
            <h3>KANBAN</h3>
            MAP<STRING, LIST<ETIQUETA>>
            <div>
                <table width="100%">
                    <tr bgcolor="#c0c0c0">
                        <th><h3>A Fazer</h3></th>
                        <th><h3>Fazendo</h3></th>
                        <th><h3>Bloqueado</h3></th>
                        <th><h3>Feito</h3></th>
                    </tr>
                    <tr>
                        <td>
                            <c:forEach var="etiquetas" items="${etiquetas}">
                                <div>${etiquetas.titulo}</div>
                            </c:forEach>
                        </td>
                        <td>
                            <c:forEach var="etiquetas" items="${etiquetas}">
                                <div>${etiquetas.titulo}</div>
                            </c:forEach>
                        </td>
                        <td>
                            <c:forEach var="etiquetas" items="${etiquetas}">
                                <div>${etiquetas.titulo}</div>
                            </c:forEach>
                        </td>
                        <td>
                            <c:forEach var="etiquetas" items="${etiquetas}">
                                <div>${etiquetas.titulo}</div>
                            </c:forEach>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    <%@include file="jspf/rodape.jspf" %>