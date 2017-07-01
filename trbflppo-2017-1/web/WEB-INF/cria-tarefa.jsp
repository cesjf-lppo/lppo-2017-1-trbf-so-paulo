<%-- 
    Document   : cria-tarefa
    Created on : 24/06/2017, 16:44:38
    Author     : Paulo
--%>

<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nova Tarefa</title>
    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>

        <div>
            <h3>Nova Tarefa</h3>
            <div>
                <center>
                    <form method="post" style="width: 60%; text-align: left">
                        <label>Titulo:</label>
                        <input type="text" name="titulo"/>
                        <label>Descrição:</label>
                        <input type="text" name="descricao"/>
                        <label>Data prevista para conclusão:</label>
                        <input type="text" name="dataConcluir"/>
                        <div>
                            <input type="submit" value="Cadastrar"/>
                        </div>
                    </form>
                </center>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>