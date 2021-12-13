<%-- 
    Document   : header
    Created on : 9 de dez. de 2021, 19:19:54
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String headerError = null;
    //adicionando usuário
    if(request.getParameter("session.login")!=null){
        String login = request.getParameter("user.login");
        session.setAttribute("user.login", login);
        response.sendRedirect(request.getRequestURI());
        
    //removendo usuário    
    }else if(request.getParameter("session.logout") != null) {
        session.removeAttribute("user.login");
        response.sendRedirect(request.getRequestURI());
    }
    
    //usuario da sessão
    String username = (String)session.getAttribute("user.login");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Fernanda Task APP</h1>
        <hr/>
        <%if(session.getAttribute("user.login") == null){%>
        <form method="post">
            Nome:<input type="text" name="user.login"/>
            <input type="submit" name="session.login" value="Entrar"/>
        </form>
        <hr/>
        <%}else{%>
        <form>
            Bem vindo(a), <b><a href="my-profile.jsp"><%= username %></a></b>
            <input type="submit" name="session.logout" value="Sair"/>
        </form> 
        <hr/>    
        <%}%>
    </body>
</html>
