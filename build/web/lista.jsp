<%-- 
    Document   : lista
    Created on : 4 de mai. de 2023, 10:26:28
    Author     : QI
--%>

<%@page import="model.MapaDAO" %>
<%@page import="model.Mapa" %>
<%@include file="session/verify.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Game</title>
    </head>
    <body>
        <h1>Lista</h1>
            <table>
                <thead>
                    <th>ID</th>
                    <th>NOME</th>
                    <th>MISSÃO</th>
                    <th>CLIMA</th>
                    <th></th>
                    <th></th>
                </thead>
                <tbody>
            
        <%
                MapaDAO mapaDao = new MapaDAO();
                
                //Para cada elemento da lista (mapaDao.listMapa)
                //chame-o de "item"
                for(Mapa item : mapaDao.listMapa()){
                    %>
                  <tr>
                    <td><%= item.getIdMapa() %></td>
                    <td><%= item.getNome()%></td>
                    <td><%= item.getMissao()%></td>
                    <td><%= item.getClima()%></td>
                    <td>
                        <a href="#editar<%= item.getIdMapa() %>"  >📝</a>
                    </td>
                    <td>
                        <a href="MapaController?id=<%= item.getIdMapa() %>"  >❌</a>
                    </td>
                  </tr>
               <%
                }
           %>
                </tbody>
           </table>
        <hr>
        <a href="home.jsp" title="Página inicial">Página inicial</a>
    </body>
</html>
