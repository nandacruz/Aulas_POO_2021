<%-- 
    Document   : calendar
    Created on : 3 de set. de 2021, 20:40:49
    Author     : FERNANDADEMOURACRUZ
--%>



<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    
       
    String errorMessage = null;
    int m = 0;
    String mes="";
    int dias = 0;
    
    try{
        m = Integer.parseInt(request.getParameter("m"));
        
        if(m == 1){
            mes = "Janeiro";
            
        }else if(m == 2){
            mes = "Fevereiro";
            
        }else if(m == 3){
            mes = "Março";
            
        }else if(m == 4){
            mes = "Abril";
            
        }else if(m == 5){
            mes = "Maio";
            
        }else if(m == 6){
            mes = "Junho";
            
        }else if(m == 7){
            mes = "Julho";
            
        }else if(m == 8){
            mes = "Agosto";
            
        }else if(m == 9){
            mes = "Setembro";
            
        }else if(m == 10){
            mes = "Outubro";
            
        }else if(m == 11){
            mes = "Novembro";
            
        }else if(m == 12){
            mes = "Dezembro";
        }                                    
              
        
    }catch(Exception e){
        errorMessage = "Erro ao ler parâmetro mês" + request.getParameter("m");
    }
    
    int y = 0;
    
    try{
       y = Integer.parseInt(request.getParameter("y"));        
        
    }catch(Exception e){
        errorMessage = "Erro ao ler parâmetro ano" + request.getParameter("y");
    }
    
    
            
%>


<%
    Calendar c = Calendar.getInstance();
    c.set(Calendar.YEAR, y);
    c.set(Calendar.MONTH, m-1);
    c.set(Calendar.DAY_OF_MONTH,1);
    c.get(Calendar.DAY_OF_WEEK);
    
    Integer date = (c.get(Calendar.DAY_OF_WEEK));
    //String date = (""+c.getTime());
    Integer year =(c.get(Calendar.YEAR));
    Integer month =(c.get(Calendar.MONTH));
    Integer week =(c.get(Calendar.DAY_OF_MONTH));
    
%>

<html>
    <head>
        <title>Calendar</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="assets/css/style.css"/>
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
        
    </head>
    <body>
        <header>
            <h1 class="title">Calendário</h1>               
        </header>
        
        <article>
            <div class="flex-container">
                
                <table class="calendar">
                    <tr class="month"><th colspan="4"><%= mes %></th><th colspan="3"><%= y %></th></tr>
                    <tr class="week"><th>DOM</th><th>SEG</th><th>TER</th><th>QUA</th><th>QUI</th><th>SEX</th><th>SAB</th></tr>                 
                  
                     
                                        
                    
                    <!--30 dias-->
                    <% if(m == 4 || m == 5 || m == 9 || m == 11 ){ 
                    
                    int cont = 1;
                    %>
                    
                       <%for(int i = 1;i<=6;i++){%> <!--quantidade maxima de semanas em um mes-->

                        <tr>            
                            <% if(cont == 1){%> <!--primeira semana ( para cair  no dia certo)-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(j >= date){%>

                                        <%if(cont < 31){%>

                                            <th><%= cont++ %></th>

                                        <%}%>

                                    <%}else{%>

                                        <th></th>

                                    <%}%>

                                <%}%>

                            <%}else{%><!--Semanas posteriores-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(cont < 31){%>

                                        <th><%= cont++ %></th>

                                    <%}%>                             
                                    
                                    

                                <%}%>
                            
                            
                            
                            <%}%>

                        </tr>    

                    <%}%>
                
                <!---31 dias-->    
                <%}else{  int cont = 1; %>
                    
                   
               
                <%}%>    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                            
                
                </table>    

                <form action="calendar.jsp">
                    <img src="assets/img/unnamed.png" class="form-img"/>
                    
                    <div>
                        <select name="m" id="m">                      
                            <option value="1">Janeiro</option>
                            <option value="2">Fevereiro</option>
                            <option value="3">Março</option>
                            <option value="4">Abril</option>
                            <option value="5">Maio</option>
                            <option value="6">Junho</option>
                            <option value="7">Julho</option>
                            <option value="8">Agosto</option>
                            <option value="9">Setembro</option>
                            <option value="10">Outubro</option>
                            <option value="11">Novembro</option>
                            <option value="12">Dezembro</option>
                        </select>
                        <input type="number" placeholder="yyyy" class="fields" min="1" value="<%= year %>" name="y"/>
                        <input type="submit" value="consultar" id="btn-calendar"/>
                    </div>
                    
                    <table class="information">
                        <tr><th colspan="3">Dia da semana que inicia: <%= date %></th></tr>
                        <tr><th>Dia: <%= week %></th><th>Mês: <%= month+1%></th><th>Ano: <%= year %></th></tr>
                        
                       
                        
                    </table>
                    
                    
                    
                </form>
            </div>
        </article>
        
        
        <footer>
            <p><b>Nome:</b> Fernanda de Moura Cruz</p>
            <p><b>RA:</b> 0000000000</p>
        </footer>
    </body>
</html>

