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
        <div>
            <h3>Edição de Etiquetas</h3>
            <div>
                <center>
                    <form method="post" style="width: 50%; text-align: left">
                        <label>Id:</label>
                        <input type="text" name="id" value="${etiqueta.id}" readonly="readonly" />
                        <label>Referência para um Autor:</label>
                        <input type="text" name="idUsuario" value="${etiqueta.referenciaAutor.id}"/>
                        <label>Referência para uma Tarefa:</label>
                        <input type="text" name="idTarefa" value ="${etiqueta.referenciaTarefa.id}"/>
                        <label>Titulo:</label>
                        <input type="text" name="titulo" value="${etiqueta.titulo}" readonly="readonly"/>
                        <select type="text" name="titulo" size="4">
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
