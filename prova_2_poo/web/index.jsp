<%-- 
    Document   : index
    Created on : 9 de dez. de 2021, 19:23:07
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="db.Tasks"%>
<%@page import="web.FernandaDbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestException = null;
    ArrayList<Tasks> taskList = new ArrayList<>();
    
    try{
        //add task
        if(request.getParameter("add")!= null){
            String taskName = request.getParameter("taskName");
            Tasks.addTask(taskName,(String) session.getAttribute("user.login"));
            response.sendRedirect(request.getRequestURI());
        }
        //removendo
        if(request.getParameter("remove")!= null){
            String taskName = request.getParameter("taskName");
            Tasks.removeTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        //lendo a task
        taskList = Tasks.getList();
    }catch(Exception ex){
        requestException = ex;
    }
    
    
 
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fernanda-TaskApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jsp" %>
        <div class="container">
            <% if(requestException != null) { %>
                <div style="color:red">
                    Erro na leitura ou gravação de tarefas:
                    <%= requestException.getMessage() %>
                </div>
            <% } %>
        
            <%if(session.getAttribute("user.login") == null){%> 
                 <div>Faça login para adicionar tarefas</div>
            <% }else{%>
            <h2>Tarefas</h2>
                <form>
                    <input type="text" name="taskName" />
                    <input type="submit" name="add" value="Adicionar" />
                </form>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Usuário</th>
                        <th>Tarefa</th>
                        <th>Excluir</th>
                    </tr>
                    <%  for(Tasks taskName: taskList){ %>
                        <tr>
                            <td><%= taskName.getRowid() %></td>
                            <td><%= taskName.getName() %></td>
                            <td><%= taskName.getTitle() %></td>
                            <td>
                                <form>
                                    <input type="hidden" name="taskName" value="<%= taskName.getTitle()%>" />
                                    <input type="submit" name="remove" value="X" />
                                </form>
                            </td>
                        </tr>
                    <%}%>
                </table>
            <%}%>
        </div>
    </body>
</html>
