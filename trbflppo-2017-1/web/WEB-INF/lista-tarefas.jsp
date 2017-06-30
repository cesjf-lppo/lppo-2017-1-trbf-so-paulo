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

        <div class="panel panel-primary" style="margin:20px;">
            <div class="panel-heading">
                <h3 class="panel-title" style="text-align: center;">Listagem de Tarefas</h3>
            </div> 
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <tr>
                            <th>Id</th>
                            <th>Titulo da tarefa</th><br>
                            <th>Descrição da tarefa</th><br>
                            <th>Data Prevista para conclusão</th><br>
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
                <br>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>
