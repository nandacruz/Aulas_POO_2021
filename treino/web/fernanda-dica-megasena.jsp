<%-- 
    Document   : fernanda-dica-mensagem
    Created on : 27 de set. de 2021, 17:25:43
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Megasena JSP</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/header.jspf"%>
         <h2>Megasena JSP</h2>
         <hr>
         
         <%if(UserName != null){%>
            
         <div>Números: <%= Megasena %></div>   
            
        <%}else{%>
            <p>AVISO: Você não tem permissão para acessar esses dados, faça login para poder visualizar ou <a href="index.jsp">retorne para a página inicial</a>
        <%}%>
    </body>
</html>
