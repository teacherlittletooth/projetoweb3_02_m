<%-- 
    Document   : cadastro
    Created on : 4 de mai. de 2023, 10:26:21
    Author     : QI
--%>

<%@include file="session/verify.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro</h1>
        <h2>Novo mapa</h2>
        <form action="#" method="post">
            <input type="text" name="nome_mapa" placeholder="Nome do mapa" required>
            <br><br>
            <select name="missao" required>
                <option value="">Selecione uma missão</option>
                <option value="Deserto">Deserto</option>
                <option value="Praia">Praia</option>
                <option value="Selva">Selva</option>
                <option value="Cidade grande">Cidade grande</option>
                <option value="Caverna">Caverna</option>
            </select>
            <br><br>
            <select name="clima" required>
                <option value="">Selecione um clima</option>
                <option value="Ensolarado">Ensolarado</option>
                <option value="Chuvoso">Chuvoso</option>
                <option value="Nublado">Nublado</option>
                <option value="Chove não molha">Chove não molha</option>
                <option value="Torrando os pelo">Torrando os pelo</option>
            </select>
            <br><br>
            <input type="submit" value="Salvar mapa">
        </form>
        <br><br>
        <a href="home.jsp" title="Página inicial">Página inicial</a>
    </body>
</html>
