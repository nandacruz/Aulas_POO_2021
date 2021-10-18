<%-- 
    Document   : index
    Created on : 18 de out. de 2021, 16:29:11
    Author     : FERNANDADEMOURACRUZ
--%>

<%
    int sessions = 0;
    
    ArrayList<String> sessionList = null;
    if(application.getAttribute("sessionList") != null){
        sessionList = (ArrayList) application.getAttribute("sessionList");
        application.setAttribute("sessionList", sessionList);
        sessions = sessionList.size();
    }
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
        <h1>Home</h1>
        <h3>Sessões:<%= sessions%></h3>
        <%if(user != null){%>
        <table border="1">
            <tr><th>Usuários Logados</th></tr>
            <%for(String name: sessionList){%>
                <tr><th><%= name%></th></tr>
            <%}%>
        </table>
        <%}%>
    </body>
</html>
