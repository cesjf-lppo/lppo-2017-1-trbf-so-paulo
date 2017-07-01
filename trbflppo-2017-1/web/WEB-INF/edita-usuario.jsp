<%-- 
    Document   : edita-usuario
    Created on : 24/06/2017, 17:26:09
    Author     : Paulo
--%>

<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edição de Usuários</title>
    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>
        <div>
            <h3>Edição de Usuários</h3>
            <div>
                <center>
                    <form method="post" style="width: 70%; text-align: left">
                        <label>Id:</label>
                        <input type="text" name="id" value="${usuario.id}" readonly="readonly" />
                        <label>Nome Completo:</label>
                        <input type="text" name="nome" value="${usuario.nomeCompleto}"/>
                        <label>Email:</label>
                        <input type="text" name="email" value ="${usuario.email}"/>
                        <label>Senha:</label>
                        <input type="text" name="senha" value="${usuario.senha}"/>
                        <div>
                            <input type="submit" value="Cadastrar"/>
                        </div>
                    </form>
                </center>
            </div>
        </div>
        <%@include file="jspf/rodape.jspf" %>
