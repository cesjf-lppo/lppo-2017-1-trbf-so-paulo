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
        <div class="panel panel-primary" style="margin:20px;">
            <div class="panel-heading">
                <h3 class="panel-title" style="text-align: center;">Nova Etiqueta</h3>
            </div> 
            <div class="panel-body">
                <center>
                    <form method="post" style="width: 70%; text-align: left">
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
                        <label>Titulo:</label>
                        <input class="form-control" type="text" name="titulo"/>
                        <br>
                        <div class="form-group col-md-3 col-sm-3 pull-right" >
                            <input type="submit" class="btn btn-primary" value="Cadastrar"/>
                        </div>
                    </form>
                </center>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>