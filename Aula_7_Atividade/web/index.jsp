<%-- 
    Document   : index
    Created on : 20 de set. de 2021, 17:20:36
    Author     : FERNANDADEMOURACRUZ
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<%
    Random randomNumber =  new Random();
    
     if(request.getParameter("login") != null){
        String userName = request.getParameter("userName");
        session.setAttribute("userName", userName); 

    }else if(request.getParameter("logout") != null){
        session.removeAttribute("userName");
    }
     
    
//----------
    
    
    if(session.getAttribute("num1")== null){ 
       
       session.setAttribute("num1", randomNumber.nextInt(100));        
    }
     
    int num1 = (int) session.getAttribute("num1");
    session.setAttribute("num1", num1);  
    
//----------
    
    
    if(session.getAttribute("num2")== null){ 
       session.setAttribute("num2", randomNumber.nextInt(100));        
    }
     
    int num2 = (int) session.getAttribute("num2");
    session.setAttribute("num2", num2);  

    String authUserName = (String)session.getAttribute("userName");
    
//----------
    
    
    if(session.getAttribute("num3")== null){ 
       session.setAttribute("num3", randomNumber.nextInt(100));        
    }
     
    int num3 = (int) session.getAttribute("num3");
    session.setAttribute("num3", num3);  

//----------
    
    
    if(session.getAttribute("num4")== null){ 
       session.setAttribute("num4", randomNumber.nextInt(100));        
    }
     
    int num4 = (int) session.getAttribute("num4");
    session.setAttribute("num4", num4);  

//----------
    
    
    if(session.getAttribute("num5")== null){ 
       session.setAttribute("num5", randomNumber.nextInt(100));        
    }
     
    int num5 = (int) session.getAttribute("num5");
    session.setAttribute("num5", num5);  
//----------
    
    
    if(session.getAttribute("num6")== null){ 
       session.setAttribute("num6", randomNumber.nextInt(100));        
    }
     
    int num6 = (int) session.getAttribute("num6");
    session.setAttribute("num6", num6);  
%>    


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="assets/css/style.css"/>
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
        <title>Home</title>
    </head>
    <body>
        <header> <%@include file="WEB-INF/jspf/header.jspf"%> </header>
        <form>
            <%if(authUserName==null) {%>
                    Usuário: <input type="text" name="userName"/>
                    Senha: <input type="text" name="userPassword"/>
                    <input type="submit" name="login" value="LogIn"/>
            <%}else{%>
                    <div>Seja bem vindo, <%= authUserName %></div>
                    
                    <div>Numero gerado: <%= num1 %> - <%= num2 %> - <%= num3 %> - <%= num4 %> - <%= num5 %> - <%= num6 %></div>
                    <input type="submit" name="logout" value="Logout"/>   
            <%}%>
        </form>
    </body>
</html>
