<%-- 
    Document   : categories
    Created on : 21 de nov. de 2021, 20:42:43
    Author     : FERNANDADEMOURACRUZ
--%>
<%@page import="db.Category"%>
<%@page import="java.util.ArrayList"%>
<%
    String requestError = null;
    ArrayList<Category> list = new ArrayList<>();
    //inserindo ou deletando categorias
    try{
        if(request.getParameter("insert")!=null){
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            Category.Insert(name, description);
            response.sendRedirect(request.getRequestURI());
        }else if(request.getParameter("delete")!=null){
            String name = request.getParameter("name");
            Category.Delete(name);
            response.sendRedirect(request.getRequestURI());
        }
        list = Category.getList();
    }catch(Exception ex){
        requestError = ex.getMessage();
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categorias - MyFinance$</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Categorias</h2>
        <%if(requestError!=null){%>
        <div style="color: red"><%= requestError %></div>
        <%}%>
        
        <%if(session.getAttribute("user.login") == null){%>
            <div>Página restrita a usuários logados</div>
        <%}else{%>
        
        <form method="post">
            Nome: <input type="text" name="name"/>
            Descrição: <input type="text" name="description"/>
            <input type="submit" name="insert" value="Inserir"/>
        </form>
        <hr/>
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Descrição</th>
                <th>Exclusão</th>
            </tr>
            <%for(Category c: list){%>
                <tr>
                    <td><%= c.getName() %></td>
                    <td><%= c.getDescription() %></td>
                    <td>
                        <form method="post">
                            <input type="hidden" name="name" value="<%= c.getName() %>"/>
                            <input type="submit" name="delete" value="Excluir"/>
                        </form>
                    </td>
                </tr>
            <%}%>
        </table>
        
        <%}%>
    </body>
</html>
