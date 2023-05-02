<%-- 
    Document   : index
    Created on : 27 de abr. de 2023, 09:42:14
    Author     : QI
--%>

<%@page import="model.User"%>
<%
    User userSession = (User) session.getAttribute("userSession");
    //out.print(userSession);
    if(userSession != null) {
        response.sendRedirect("home.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Game</title>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="icon" href="img/logotipo.png"/>
    </head>
    <body>
        <form action="login_controller" method="post">
            <img src="img/logotipo.png" alt="Logotipo do site" width="200"/>
            <br>
            <input type="text" name="user" id="user" class="fields" placeholder="Nome de usuário" required>
            <br><br>
            
            <input type="password" name="pass" id="pass" class="fields" placeholder="Senha" required>
            <br><br>
            
            <input type="submit" value="Entrar">
        </form>
    </body>
</html>
