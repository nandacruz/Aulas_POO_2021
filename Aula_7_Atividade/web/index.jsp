<%-- 
    Document   : index
    Created on : 20 de set. de 2021, 17:20:36
    Author     : FERNANDADEMOURACRUZ
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<%
    Random randomNumber =  new Random();
    
    /*int vetor[] = new int[5];
    
    
    for( int i = 0;i<6;i++){
        
        vetor[i] = randomNumber.nextInt(100);
        
    }*/
    
     if(request.getParameter("login") != null){
        String userName = request.getParameter("userName");
        session.setAttribute("userName", userName); 

    }else if(request.getParameter("logout") != null){
        session.removeAttribute("userName");
    }
     
    String authUserName = (String)session.getAttribute("userName");
//----------
    String conc = "";
    
    for(int i = 0;i<6;i++){
        conc += randomNumber.nextInt(100)+ " ";
    }
    
    
    if(session.getAttribute("numero")== null){ 
       
       session.setAttribute("numero", conc);        
    }
     
    String numero = (String) session.getAttribute("numero");
    session.setAttribute("numero", numero);  
    

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
                    Senha: <input type="password" name="userPassword"/>
                    <input type="submit" name="login" value="LogIn"/>
            <%}else{%>
                    <div>Seja bem vindo, <%= authUserName %></div>
                    
                    <div>Numero gerado: <%= numero %></div>
                    <input type="submit" name="logout" value="Logout"/>   
            <%}%>
        </form>
    </body>
</html>
