<%-- 
    Document   : horario
    Created on : 28 de out. de 2021, 17:07:47
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page import="model.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    
    Horario horaAtual = new Horario(18,12,30);
    Horario horaIntervalo = new Horario(19,40,0);

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
        
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2>HORÁRIO</h2>
        
        <h3>Horário Atual:</h3>
        <div><%=horaAtual.getHorario()%></div>
        
        <h3>Horário do Intervalo:</h3>
        <div><%=horaIntervalo.getHorario()%></div>
    </body>
</html>
