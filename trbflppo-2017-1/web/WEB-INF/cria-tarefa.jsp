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
                <form method="post">
                    <p>
                        <label>Titulo:</label>
                        <input type="text" name="titulo" size="60"/>
                    </p>
                    <p>
                        <label>Descrição:</label>
                        <input type="text" name="descricao" size="56"/>
                    </p>
                    <p>
                        <label>Data prevista para conclusão:</label>
                        <input type="text" name="dataConcluir" size="36"/>
                    </p>
                    <div>
                        <input type="submit" value="Cadastrar"/>
                    </div>
                </form>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>