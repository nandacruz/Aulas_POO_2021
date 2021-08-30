<%-- 
    Document   : sum
    Created on : 30 de ago. de 2021, 17:17:01
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String errorMessage = null;
    double n1 = 0,n2 = 0,re = 0;
    
    try{
        n1 = Double.parseDouble(request.getParameter("n1"));        
        
    }catch(Exception e){
        errorMessage = "Erro ao ler parâmetro n1" + request.getParameter("n1");
    }
    
    try{
        n2 = Double.parseDouble(request.getParameter("n2"));
        
        
    }catch(Exception e){
         errorMessage = "Erro ao ler parâmetro n2" + request.getParameter("n2");
    }
    
 try{
        re = n1 + n2;
        
    }catch(Exception e){
        errorMessage = "Erro ao calcular soma: " + request.getParameter("re");
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
        <h3>Data/hora do servidor</h3>
        <h3><a href="index.html">Voltar</a></h3>
        
        <h3>Soma</h3>
        
        <% 
            if(errorMessage == null){
        %>
            
        <h4><%= n1 %> + <%= n2 %> = <%= re %></h4>
        
        <% 
            }else{
        %>
        
            <div style="color:red"><%= errorMessage %></div>
        
        <% 
            }
        %>
        
        <form>
            
            <input type="number" value="0" name="n1"/> +
            <input type="number" value="0" name="n2"/>
            <input type="submit" value="Calcular"/>
            
        </form>
    </body>
</html>
