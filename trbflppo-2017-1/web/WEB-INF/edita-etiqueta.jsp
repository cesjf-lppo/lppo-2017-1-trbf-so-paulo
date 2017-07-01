<%-- 
    Document   : edita-etiqueta
    Created on : 24/06/2017, 17:02:59
    Author     : Paulo
--%>

<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edição de Etiquetas</title>
    </head>
    <body>
        
        <%@include file="jspf/menu.jspf" %>
        
        <div class="panel panel-primary" style="margin:20px;">
            <div class="panel-heading">
                <h3 class="panel-title" style="text-align: center;">Edição de Etiquetas</h3>
            </div> 
            <div class="panel-body">
                <center>
                    <form method="post" style="width: 70%; text-align: left">
                        <label>Id:</label>
                        <input class="form-control" name="id" value="${etiqueta.id}" readonly="readonly" />
                        <label>Referência para um Autor:</label>
                        <input class="form-control" name="idUsuario" value="${etiqueta.referenciaAutor.id}"/>
                        <label>Referência para uma Tarefa:</label>
                        <input class="form-control" name="idTarefa" value ="${etiqueta.referenciaTarefa.id}"/>
                        <label>Titulo:</label>
                        <input class="form-control" name="titulo" value="${etiqueta.titulo}" readonly="readonly"/>
                        <select class="form-control" name="titulo" size="4">
                            <option value="A Fazer">A Fazer</option>
                            <option value="Fazendo">Fazendo</option>
                            <option value="Bloqueado">Bloqueado</option>
                            <option value="Feito">Feito</option>
                        </select>
                        <br>
                        <div class="form-group col-md-3 col-sm-3 pull-right" >
                            <input type="submit" class="btn btn-primary" value="Cadastrar"/>
                        </div>
                    </form>
                </center>
            </div>
        </div>
                        
        <%@include file="jspf/rodape.jspf" %>
