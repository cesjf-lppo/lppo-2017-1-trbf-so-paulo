<%-- 
    Document   : edita-etiqueta
    Created on : 24/06/2017, 17:02:59
    Author     : Paulo
--%>

<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edição de Etiquetas</title>
    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>
        <div>
            <h3>Edição de Etiquetas</h3>
            <div>
                <form method="post">
                    <p>
                        <label>Id:</label>
                        <input type="text" name="id" value="${etiqueta.id}" readonly="readonly" size="80"/>
                    </p>
                    <p>
                        <label>Referência para um Autor:</label>
                        <input type="text" name="idUsuario" value="${etiqueta.referenciaAutor.nomeCompleto}" readonly="readonly" size="54"/>
                    </p>
                    <p>
                        <label>Referência para uma Tarefa:</label>
                        <select name="idTarefa" style="width: 340px">  
                            <c:forEach var="tarefa" items="${tarefas}">  
                                <option value="${tarefa.id}">${tarefa.titulo}</option>  
                            </c:forEach>  
                        </select>
                    </p>
                    <p>
                        <label>Titulo da Etiqueta:</label>
                        <select name="titulo" style="width: 400px">  
                            <c:forEach var="etiquetas" items="${etiquetas}">  
                                <option value="${etiquetas.id}">${etiquetas.titulo}</option>  
                            </c:forEach>  
                        </select>
                    </p>
                    <div>
                        <input type="submit" value="Cadastrar"/>
                    </div>
                </form>
            </div>
        </div>
        <%@include file="jspf/rodape.jspf" %>
