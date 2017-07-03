<%-- 
    Document   : kamban
    Created on : 24/06/2017, 20:50:13
    Author     : Paulo
--%>

<style type="text/css">
    .container-kanban{
            font-family: Arial;
            font-size: 14px;
            width: 25%;
            height: 150px;
            float: left;
            background-color: #8B008B;
            color: white;
            
           
    }

</style>

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
            <!--MAP<STRING, LIST<ETIQUETA>>-->
            <div>
                <div class="container-kanban">
                    <h3>A Fazer</h3>
                    <c:forEach var="etiquetas" items="${etiquetas}">
                        <div>${etiquetas.titulo}</div>
                    </c:forEach>
                </div>
                <div class="container-kanban">
                    <h3>Fazendo</h3>
                    <c:forEach var="etiquetas" items="${etiquetas}">
                        <div>${etiquetas.titulo}</div>
                    </c:forEach>
                </div>
                <div class="container-kanban">
                    <h3>Bloqueado</h3>
                    <c:forEach var="etiquetas" items="${etiquetas}">
                        <div>${etiquetas.titulo}</div>
                    </c:forEach>
                </div>
                <div class="container-kanban">
                    <h3>Feito</h3>
                    <c:forEach var="etiquetas" items="${etiquetas}">
                        <div>${etiquetas.titulo}</div>
                    </c:forEach>
                </div>
            </div>
        </div>
    <%@include file="jspf/rodape.jspf" %>