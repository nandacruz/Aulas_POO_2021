<%-- 
    Document   : fernanda
    Created on : 4 de out. de 2021, 11:39:50
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
        <%if(user != null){%>
            <h2>Nome: Fernanda de Moura Cruz</h2>
            <h2>Matrícula: 1290482012008</h2>
            <h2>Semestre: 1 - 2020</h2>
            <h2>Github:<a href="https://github.com/nandacruz"> https://github.com/nandacruz</a></h2>
            <table border="1">
                <tr><th>Disciplinas Cursadas - 4 ciclo</th></tr>
                <tr><th>Banco de Dados</th></tr>
                <tr><th>Engenharia de Software</th></tr>
                <tr><th>Inglês</th></tr>
                <tr><th>Sistemas Operacionais</th></tr>
            </table>
        <%}else{%>
        <p>ATENÇÃO, você não tem permissão para visualizar essa informação, efetue o login para visualizar</p>
        <a href="index.jsp">Voltar para a pagina inicial</a>
        <%}%>
    </body>
</html>
