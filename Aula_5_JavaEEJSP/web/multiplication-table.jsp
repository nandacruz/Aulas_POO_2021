<%-- 
    Document   : random-list
    Created on : 30 de ago. de 2021, 17:51:23
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String errorMessage = null;
    int n = 10;
    
    try{
        n = Integer.parseInt(request.getParameter("n"));        
        
    }catch(Exception e){
        errorMessage = "Erro ao ler parâmetro n" + request.getParameter("n");
    }
    
    
            
%>


<html>
    <head>
        <title>Java EE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Java EE</h1>
        <h2>Java Server Pages</h2>
        <h3><a href="index.html">Voltar</a></h3>
        
        <h3>Tabuada</h3>
        
        <% 
            if(errorMessage == null){
        %>
            
        <table>
            
                      
            <%for (int i = 1; i<=10;i++){%>
            
            <tr>
                <td><%= n %></td>
                <td> x </td>
                <td><%= i %></td>
                <td>=</td>
                <th><%=(n*i) %></th>
            </tr> 
            
            <%}%>
        </table>
        
        <%}else{%>       
        
            <div style="color:red"><%= errorMessage %></div>
        
       
        <%}%>
        <br>
        <form>
            
            <input type="number" value="<%= n %>" name="n"/>             
            <input type="submit" value="Gerar"/>
            
        </form>
    </body>
</html>

