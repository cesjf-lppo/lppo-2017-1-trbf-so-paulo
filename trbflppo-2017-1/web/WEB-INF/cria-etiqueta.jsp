<%-- 
    Document   : cria-etiqueta
    Created on : 24/06/2017, 16:25:27
    Author     : Paulo
--%>
<!DOCTYPE html>
<%@page errorPage="jspf/erro.jsp" %>        
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nova Etiqueta</title>
    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>        
        <div>
            <h3>Nova Etiqueta</h3>
            <div>
                <form method="post">
                    <p>
                        <label>Referência para um Autor:</label>
                        <select name="idUsuario" style="width: 300px">  
                            <c:forEach var="usuario" items="${usuarios}">  
                                <option value="${usuario.id}">${usuario.nomeCompleto}</option>  
                            </c:forEach>  
                        </select>
                    </p>
                    <p>
                        <label>Referência para uma Tarefa:</label>
                        <select name="idTarefa" style="width: 290px">  
                            <c:forEach var="tarefa" items="${tarefas}">  
                                <option value="${tarefa.id}">${tarefa.titulo}</option>  
                            </c:forEach>  
                        </select>
                    </p>
                    <p>
                        <label>Titulo da Etiqueta:</label>
                        <input type="text" name="titulo" size="54">
                    </p>
                    <div>
                        <input type="submit" value="Cadastrar"/>
                    </div>
                </form>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>