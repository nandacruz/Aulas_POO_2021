<%-- 
    Document   : index
    Created on : 4 de out. de 2021, 11:17:23
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
        <h1>Usuários logados:<%= application.getAttribute("contador") %></h1>
        <%if(user != null){%>
        <table border="1";>
            <tr><th>Usuários Logados</th></tr>
            
        </table>
        <%}%>
        
    </body>
</html>
