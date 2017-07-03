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
        <div>
            <h3>Listatagem de Usuários</h3>
            <div>
                <div>
                    <table>
                        <tr>
                            <th>Id</th>
                            <th>Nome</th>
                            <th>Email</th>
                            <th>Exluir</th>
                        </tr>   
                        <c:forEach var="usuario" items="${usuarios}">
                            <tr>
                                <td><a href="editaUsuario.html?id=${usuario.id}">${usuario.id}</a></td>
                                <td>${usuario.nomeCompleto}</td>
                                <td>${usuario.email}</td>
                                <td><a href="excluiUsuario.html?id=${usuario.id}">Excluir;</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>

    <%@include file="jspf/rodape.jspf" %>