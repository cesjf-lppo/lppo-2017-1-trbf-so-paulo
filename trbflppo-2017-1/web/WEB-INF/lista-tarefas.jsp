<%-- 
    Document   : lista-tarefas
    Created on : 24/06/2017, 20:11:06
    Author     : Paulo
--%>

<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Tarefas</title>
    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>
        <div>
            <h3>Listagem de Tarefas</h3>
            <div>
                <div>
                    <table>
                        <tr>
                            <th>Id</th>
                            <th>Titulo da tarefa</th>
                            <th>Descrição da tarefa</th>
                            <th>Data Prevista para conclusão</th>
                            <th>Ações</th>
                        </tr>   
                        <c:forEach var="tarefa" items="${tarefas}">
                            <tr>
                                <td><a href="editaTarefa.html?id=${tarefa.id}">${tarefa.id}</a></td>
                                <td>${tarefa.titulo}</td>
                                <td>${tarefa.descricao}</td>
                                <td><fmt:formatDate value="${tarefa.concluir}" type="date" dateStyle="default" /></td>
                                <td><a href="excluiTarefa.html?id=${tarefa.id}">Excluir;</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    <%@include file="jspf/rodape.jspf" %>

