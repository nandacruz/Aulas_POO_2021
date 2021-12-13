<%-- 
    Document   : users
    Created on : 20 de nov. de 2021, 15:52:08
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="db.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //String para tratamento de erro
    String requestError = null;
    
    //Array List de usuários usando a classe User.java
    ArrayList<User> users = new ArrayList();
    
    try{
        //tratando inserção ou remoção
        if(request.getParameter("insert")!=null){
            String login = request.getParameter("login");
            String name = request.getParameter("name");
            String role = request.getParameter("role");
            String password = request.getParameter("password");
            User.InsertUser(login, name, role, password);
            response.sendRedirect(request.getRequestURI());
        }else if(request.getParameter("delete")!=null){
            String login = request.getParameter("login");
            User.DeleteUser(login);
            response.sendRedirect(request.getRequestURI());
        }
        //lendo os usuários
        users = User.getUsers();
    }catch(Exception ex){
        requestError = ex.getMessage();
            
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Início - MyFinance$</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2>Usuários</h2>
        <!--Tratamento de erro-->
        <%if(requestError != null){%>
            <div style="color:red"><%=requestError%></div>
        <%}%>
                
        <!-- A sessão guarda objetos, então se precisamos usar os valores contidos em alguma ocasião, pode ser necessária
        a conversão-->
        
        <%String role = (String)session.getAttribute("user.role");%>
        
        <!<!-- Restrição de acesso para usuário e administrador -->
        <%if(session.getAttribute("user.login") == null){%>
            <div>Página restrita a usuários logados</div>
        <%}else if(!session.getAttribute("user.role").equals("ADMIN")){%>
            <div>Página restrita a administradores</div>
        <%}else{%>
            <!-- Inserindo usuários -->
            <form method="post">
                Login: <input type="text" name="login"/>
                Nome: <input type="text" name="name"/>
                Papel: <select name="role">
                    <option value="ADMIN">ADMIN</option>
                    <option value="USER">USER</option>
                </select>
                Senha: <input type="password" name="password"/>
                <input type="submit" name="insert" value="Inserir"/>
            </form>
            <hr/>
            
            <table border="1">
                <tr>
                    <th>Login</th>
                    <th>Name</th>
                    <th>Role</th>
                    <th>Exclusão</th>
                </tr>
                <%for(User user: users){%>
                    <tr>
                        <!-- Listando usuários -->
                        <td><%= user.getLogin() %></td>
                        <td><%= user.getName() %></td>
                        <td><%= user.getRole() %></td>
                        <td>
                            <!-- Excluindo usuários -->    
                            <form method="post">
                                <input type="hidden" name="login" value="<%= user.getLogin() %>"/>
                                <input type="submit" name="delete" value="Excluir"/>
                            </form>
                        </td>
                    </tr>
                <%}%>
            </table>
            
        <%}%>
        
        
    </body>
</html>
