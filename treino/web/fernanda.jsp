<%-- 
    Document   : fernanda
    Created on : 27 de set. de 2021, 17:25:17
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fernanda JSP</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2>Fernanda JSP</h2>
        <hr>
        <%if(UserName != null){%>
            <h2>Nome:Fernanda de Moura Cruz</h2>
            <h2>Semestre de ingresso: 1 semestre de 2020</h2>
            <h2>GitHub:<a href="https://github.com/nandacruz">https://github.com/nandacruz</a></h2>
            <table border = "1">
            <tr><th colspan="2">Matérias</th></tr>
            <tr><th>Sigla</th><th>Nome</th></tr>
            <tr><th>IBD002</th><th>Banco de Dados</th></tr>
            <tr><th>IES300</th><th>Engenharia de Software III</th></tr>
            <tr><th>ILP007</th><th>Programação Orientada a Objetos</th></tr>
            <tr><th>ISO200</th><th>Sistemas Operacionais II</th></tr>
            <tr><th>LIN400</th><th>Inglês IV</th></tr>
        <%}else{%>
            <p>AVISO: Você não tem permissão para acessar esses dados, faça login para poder visualizar ou <a href="index.jsp">retorne para a página inicial</a> </p>
        <%}%>
            
    </body>
</html>
