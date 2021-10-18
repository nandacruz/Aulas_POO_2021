<%-- 
    Document   : fernanda-dica-megasena
    Created on : 18 de out. de 2021, 16:38:02
    Author     : FERNANDADEMOURACRUZ
--%>

<%
    ArrayList<Integer> userNumbers = (ArrayList)session.getAttribute("userNumbers");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <hr>
        <h1>Fernanda Dica-Megasena</h1>
        
        <%if(user != null){%>
            <%for(int n: userNumbers){%>
            
            <table border='1'>
                <tr><th><%= n %></th></tr>
            </table>
            
            <%}%>
        <%}else{%>
        <p>ATENÇÃO, você não tem permissão para visualizar essa informação, efetue o login para visualizar</p>
        <a href="index.jsp">Voltar para a pagina inicial</a>
        <%}%>
    </body>
</html>
