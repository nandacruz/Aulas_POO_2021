<%-- 
    Document   : index
    Created on : 20 de nov. de 2021, 15:52:08
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="db.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String requestError = null;
    
    ArrayList<User> users = new ArrayList();
    
    try{
        users = User.getUsers();
    }catch(Exception ex){
        requestError = ex.getMessage();
            
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Início - MyFinance$</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2>Início</h2>
        <%if(requestError != null){%>
            <div style="color:red"><%=requestError%></div>
        <%}%>
        <div>Página Inicial</div>
      
        
    </body>
</html>
