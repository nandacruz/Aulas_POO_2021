<%-- 
    Document   : index
    Created on : 8 de nov. de 2021, 15:36:52
    Author     : FERNANDADEMOURACRUZ
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="db.Tasks"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="web.DbtListener"%>
<%
    Exception requestException = null;
    ArrayList<String> taskList = new ArrayList<>();
    
    try{
        //add task
        if(request.getParameter("add")!= null){
            String taskName = request.getParameter("taskName");
            Tasks.addTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        //removendo
        if(request.getParameter("remove")!= null){
            String taskName = request.getParameter("taskName");
            Tasks.removeTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        //lendo a task
        taskList = Tasks.getTasks();
    }catch(Exception ex){
        requestException = ex;
    }
    
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - to-do List</title>
    </head>
    <body>
        <h1>JDBC - Fernanda de Moura Cruz</h1>
        <div><%= new java.util.Date()%></div>
        <hr>
        <h2>To-do List</h2>
        <%if(DbtListener.exception != null){%>
        <div>
            Erro na criação do banco de dados:
            <%= DbtListener.exception.getMessage() %>
        </div>
        <%}%>
        <%if(requestException != null){%>
        <div>
            Erro na leitura ou gravação de tarefas:
            <%= requestException.getMessage() %>
        </div>
        <%}%>
        <h3>Tarefas</h3>
        <form>
            <input type="text" name="taskName"/>
            <input type="submit" name="add" value="Adicionar"/>
        </form>
        <br>
        <table border="1">
            <%for(String taskName: taskList){%>
                <tr>
                    <td><%=taskName%></td>
                    <td>
                        <form>
                            <input type="hidden" name="taskName" value="<%=taskName%>"/>
                            <input type="submit" name="remove" value="X"/>
                        </form>    
                    </td>
                </tr>
            <%}%>
        </table>
        
    </body>
</html>
