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
        
        <div class="panel panel-primary" style="margin:20px;">
            <div class="panel-heading">
                <h3 class="panel-title" style="text-align: center;">Novo usuário</h3>
            </div> 
            <div class="panel-body">
                <center>
                    <form method="post" style="width: 70%; text-align: left">
                        <label>Nome Completo:</label>
                        <input class="form-control" type="text" name="nome"/>
                        <label>Email:</label>
                        <input class="form-control" type="text" name="email"/>
                        <label>Senha:</label>
                        <input class="form-control" type="text" name="senha"/>
                        <br>
                        <div class="form-group col-md-3 col-sm-3 pull-right" >
                            <input type="submit" class="btn btn-primary" value="Cadastrar"/>
                        </div>
                    </form>
                </center>
            </div>
        </div>   
        
        <%@include file="jspf/rodape.jspf" %>