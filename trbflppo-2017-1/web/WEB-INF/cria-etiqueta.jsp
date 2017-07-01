<%-- 
    Document   : cria-etiqueta
    Created on : 24/06/2017, 16:25:27
    Author     : Paulo
--%>
<!DOCTYPE html>
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
                <center>
                    <form method="post" style="width: 50%; text-align: left">
                        <label>Referência para um Autor:</label>
                        <select name="idUsuario">  
                            <c:forEach var="usuario" items="${usuarios}">  
                                <option value="${usuario.id}">${usuario.nomeCompleto}</option>  
                            </c:forEach>  
                        </select><br>
                        <label>Referência para uma Tarefa:</label>
                        <select name="idTarefa">  
                            <c:forEach var="tarefa" items="${tarefas}">  
                                <option value="${tarefa.id}">${tarefa.titulo}</option>  
                            </c:forEach>  
                        </select><br>
                        <label>Titulo da Etiqueta:</label>
                        <select class="form-control" name="titulo" size="4">
                            <option value="A Fazer">A Fazer</option>
                            <option value="Fazendo">Fazendo</option>
                            <option value="Bloqueado">Bloqueado</option>
                            <option value="Feito">Feito</option>
                        </select>

                        <div>
                            <input type="submit" value="Cadastrar"/>
                        </div>
                    </form>
                </center>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>