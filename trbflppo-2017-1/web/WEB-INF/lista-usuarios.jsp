<%-- 
    Document   : lista-usuarios
    Created on : 24/06/2017, 20:32:28
    Author     : Paulo
--%>

<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Usuários</title>
    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>

        <div class="panel panel-primary" style="margin:20px;">
            <div class="panel-heading">
                <h3 class="panel-title" style="text-align: center;">Listatagem de Usuários</h3>
            </div> 
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <tr>
                            <th>Id</th>
                            <th>Nome</th>
                            <th>Email</th>
                            <th>Ações</th>
                        </tr>   
                        <c:forEach var="usuario" items="${usuarios}">
                            <tr>
                                <td><a href="editar.html?id=${usuario.id}">${usuario.id}</a></td>
                                <td>${usuario.nomeCompleto}</td>
                                <td>${usuario.email}</td>
                                <td><a href="excluir.html?id=${usuario.id}">Excluir;</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
                <br>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>