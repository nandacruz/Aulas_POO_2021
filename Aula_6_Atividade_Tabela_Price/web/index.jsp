<%-- 
    Document   : index
    Created on : 13 de set. de 2021, 16:12:37
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
        
        
        <title>Home</title>
    </head>
    <body>
        <header>
            <%@include file="WEB-INF/jspf/header.jspf"%>
        </header>
        
        
        <h2>Instruções</h2>
        
        <p> Crie um projeto de aplicação WEB para cálculo de amortização com as seguintes páginas jsp:</p>
       
        <ul>
            <li>index.jsp, com sua identificação</li>
            <li>tabela-price.jsp, para cálculo e apresentação do resultado a partir de entradas em um form na mesma página</li>
        </ul>
        
        <a href="https://pt.wikipedia.org/wiki/Tabela_Price">https://pt.wikipedia.org/wiki/Tabela_Price </a>
        

        <p>
        Considerações:

        A aplicação precisa ter cabeçalho, rodapé e menu utilizando jspf<br>

        Anexar o link do seu projeto no GitHub e capturas de tela evidenciando o projeto sem erros de compilação no NetBeans e as páginas abertas no navegador.
        </p>
        
        <footer>
            <%@include file="WEB-INF/jspf/footer.jspf"%>
        </footer>
    </body>
</html>
