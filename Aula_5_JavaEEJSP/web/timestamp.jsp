<%-- 
    Document   : timestamp
    Created on : 30 de ago. de 2021, 16:58:01
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Java EE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Java EE</h1>
        <h2>Java Server Pages</h2>
        <h3>Data/hora do servidor</h3>
        <h3><a href="index.html">Voltar</a></h3>
        
        <%
            Date now = new Date();                     
        %>
        
        <div><%= now %> </div>
             
        
    </body>
</html>
