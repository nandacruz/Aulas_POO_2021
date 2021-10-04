<%-- 
    Document   : fernanda-dica-megasena
    Created on : 4 de out. de 2021, 11:40:20
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Megasena</h1>
        <%if(user != null){%>
            <%=Megasena%>
        <%}else{%>
            <p>ATENÇÃO, você não tem permissão para visualizar essa informação, efetue o login para visualizar</p>
            <a href="index.jsp">Voltar para a pagina inicial</a>
        <%}%>
    </body>
</html>
