<%-- 
    Document   : index
    Created on : 26 de out. de 2021, 19:55:14
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //usando construtor
    Data padrao = new Data();
    
    
    //Declarar e instanciar um objeto hoje da classe Data
    Data hoje = new Data();
    
    //Chamar metodos,"atributos" etc
    hoje.setDia(25);
    hoje.setMes(-5);
    hoje.setAno (2021);
    
    
    Data pupoNiver = new Data(1,7,1979);
    Data fernandaNiver = new Data(2,12,1998);
    
    
    /*
    fernandaNiver.dia = 2;
    fernandaNiver.mes = 12;
    fernandaNiver.ano = 2021;
    */
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/style.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
        
        <title>Classe Data - Java OO</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2>CLASSE DATA</h2>
        <h3>Data padrão:</h3>
        <div><%=padrao.getDia() %>/<%=padrao.getMes() %>/<%=padrao.getAno() %></div>
        
        <h3>Data de hoje:</h3>        
        <div><%=hoje.getData()%></div>
        
        <h3>Aniversário Professor Ricardo Pupo:</h3>
        <div><%=pupoNiver.getData()%></div>
        
        <h3>Aniversário Fernanda:</h3>
        <div><%= fernandaNiver.getData()%></div>
    </body>
</html>
