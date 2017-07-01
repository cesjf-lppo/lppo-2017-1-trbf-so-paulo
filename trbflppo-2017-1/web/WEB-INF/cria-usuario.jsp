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
                <form method="post">
                    <p>
                        <label>Nome Completo:</label>
                        <input type="text" name="nome" size="60"/>
                    </p>
                    <p>
                        <label>Email:</label>
                        <input type="text" name="email" size="71"/>
                    </p>
                    <p>
                        <label>Senha:</label>
                        <input type="text" name="senha" size="71"/>
                    </p>
                    <div>
                        <input type="submit" value="Cadastrar"/>
                    </div>
                </form>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>