<%-- 
    Document   : transactions
    Created on : 6 de dez. de 2021, 19:46:49
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page import="db.Transaction"%>
<%@page import="java.util.ArrayList"%>
<%
    String requestError = null;
    ArrayList<Transaction> list = new ArrayList<>();
    //inserindo ou deletando 
    try{
        if(request.getParameter("insert")!=null){
            String datetime = request.getParameter("datetime");
            String description = request.getParameter("description");
            String category = request.getParameter("category");
            double value = Double.parseDouble(request.getParameter("value"));
            String origin = request.getParameter("origin");
            Transaction.Insert(datetime, description, category, value, origin);
            response.sendRedirect(request.getRequestURI());
            
        }if(request.getParameter("update")!=null){
            
            long rowid = Long.parseLong(request.getParameter("rowid"));
            String datetime = request.getParameter("datetime");
            String description = request.getParameter("description");
            String category = request.getParameter("category");
            double value = Double.parseDouble(request.getParameter("value"));
            String origin = request.getParameter("origin");
            Transaction.Update(rowid,datetime, description, category, value, origin);
            
            response.sendRedirect(request.getRequestURI());
        }else if(request.getParameter("delete")!=null){
            long rowid = Long.parseLong(request.getParameter("rowid"));
            Transaction.Delete(rowid);
            response.sendRedirect(request.getRequestURI());
        }
        list = Transaction.getList();
    }catch(Exception ex){
        requestError = ex.getMessage();
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transações - MyFinance$</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Transações</h2>
        <%if(requestError!=null){%>
        <div style="color: red"><%= requestError %></div>
        <%}%>
        
        <%if(session.getAttribute("user.login") == null){%>
            <div>Página restrita a usuários logados</div>
        <%}else{%>
        
        <%if(request.getParameter("preparedInsert")!= null){%>
            <div>Preparar para inserir</div>
             
        <%}else if(request.getParameter("preparedUpdate")!= null){%>
            <div>Preparar para Alterar</div>
        
        <%}else if(request.getParameter("preparedDelete")!= null){%>
            <div>Preparar para remover</div>
        <%}else{%>

            <form method="post">

                <input type="submit" name="preparedInsert" value="Inserir"/>
            </form>
        
        <%}%>
        <hr/>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Data/Hora</th>
                <th>Descrição</th>
                <th>Categoria</th>
                <th>Valor</th>
                <th>Origem</th>
                <th>Comandos</th>
            </tr>
            <%for(Transaction t: list){%>
                <tr>
                    <td><%= t.getRowId() %></td>
                    <td><%= t.getDatetime() %></td>
                    <td><%= t.getDescription() %></td>
                    <td><%= t.getDescription() %></td>
                    <td><%= t.getCategory() %></td>
                    <td><%= t.getValue() %></td>
                    <td><%= t.getOrigin() %></td>
                    <td>
                        <form method="post">
                            <input type="hidden" name="name" value="<%= t.getRowId() %>"/>
                            <input type="submit" name="preparedDelete" value="Excluir"/>
                            <input type="submit" name="preparedUpdate" value="Alterar"/>
                        </form>
                    </td>
                </tr>
            <%}%>
        </table>
        
        <%}%>
    </body>
</html>
