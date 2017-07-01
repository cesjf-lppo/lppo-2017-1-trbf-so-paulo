<%-- 
    Document   : editar-tarefa
    Created on : 24/06/2017, 17:15:00
    Author     : Paulo
--%>

<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edição de Tarefas</title>
    </head>
    <body>
        <%@include file="jspf/menu.jspf" %>
        <div>
            <h3>Edição de Tarefas</h3>
            <div>
                <form method="post">
                    <p>                            
                        <label>Id:</label>
                        <input type="text" name="id" value="${tarefas.id}" readonly="readonly" size="64"/>
                    </p>
                    <p>                            
                        <label>Titulo:</label>
                        <input type="text" name="titulo" value="${tarefas.titulo}" size="60"/>
                    </p>
                    <p>                            
                        <label>Descrição:</label>
                        <input type="text" name="descricao" value="${tarefas.descricao}" size="56"/>
                    </p>
                    <p>                            
                        <label>Data prevista para conclusão:</label>
                        <input type="text" name="dt-concluir" value="<fmt:formatDate value="${tarefas.concluir}" type="date" dateStyle="default"/>" size="36"/>
                    </p>
                    <p>                            
                        <label>Data da conclusão:</label>
                        <input type="text" name="dt-concluida" value="<fmt:formatDate value="${tarefas.conclusao}" type="date" dateStyle="default"/>" size="47"/>
                    </p>
                    <div>
                        <input type="submit" value="Cadastrar"/>
                    </div>
                </form>
            </div>
        </div>

        <%@include file="jspf/rodape.jspf" %>