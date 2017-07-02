<%-- 
    Document   : erro
    Created on : 02/07/2017, 02:54:28
    Author     : Paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erro</title>
    </head>
    <body>
        <h1>Erro!</h1>
        <div>
            <h2>Erro - &nbspOps Aconteceu um erro!</h2>

            <p>
                Erro: <%= exception%>
            </p>

            <br />
            <p>Voltar a <a href="javascript:window.history.go(-1)">página anterior.</a> </p>
        </div>
    </body>
</html>
