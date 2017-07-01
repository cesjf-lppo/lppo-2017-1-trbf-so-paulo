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
                <div>
                    <h1>A Fazer</h1>
                    <c:forEach var="etiquetas" items="${etiquetas}">
                        <div>${etiquetas.titulo}</div>
                    </c:forEach>
                </div>
                <div>
                    <h1>Fazendo</h1>
                    <c:forEach var="etiquetas" items="${etiquetas}">
                        <div>${etiquetas.titulo}</div>
                    </c:forEach>
                </div>
                <div>
                    <h1>Bloqueado</h1>
                    <c:forEach var="etiquetas" items="${etiquetas}">
                        <div>${etiquetas.titulo}</div>
                    </c:forEach>
                </div>
                <div>
                    <h1>Feito</h1>
                    <c:forEach var="etiquetas" items="${etiquetas}">
                        <div>${etiquetas.titulo}</div>
                    </c:forEach>
                </div>
            </div>  
        </div>
    <%@include file="jspf/rodape.jspf" %>