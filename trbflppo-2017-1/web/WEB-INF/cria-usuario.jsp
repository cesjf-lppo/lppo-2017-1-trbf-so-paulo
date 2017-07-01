<%-- 
    Document   : cria-usuario
    Created on : 24/06/2017, 16:50:41
    Author     : Paulo
--%>

<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Usuario</title>
    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>
        <div>
            <h3>Novo usuário</h3>
            <div>
                <center>
                    <form method="post" style="width: 50%; text-align: left">
                        <label>Nome Completo:</label>
                        <input type="text" name="nome"/>
                        <label>Email:</label>
                        <input type="text" name="email"/>
                        <label>Senha:</label>
                        <input type="text" name="senha"/>
                        <div>
                            <input type="submit" value="Cadastrar"/>
                        </div>
                    </form>
                </center>
            </div>
        </div>   

        <%@include file="jspf/rodape.jspf" %>