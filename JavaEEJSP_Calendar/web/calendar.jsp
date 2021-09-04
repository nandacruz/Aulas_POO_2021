<%-- 
    Document   : calendar
    Created on : 3 de set. de 2021, 20:40:49
    Author     : FERNANDADEMOURACRUZ
--%>

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
                  
                     
                                        
                    
                    
                    <% for(int i = 1;i<=6;i++){%> <!--quantidade maxima de semanas em um mes-->

                        <tr>                              

                            <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                <th><%= j %></th>

                            <%}%>

                        </tr>    

                    <%}%>                    
                
                </table>    

                <form action="calendar.jsp">
                    <img src="assets/img/unnamed.png" class="form-img"/>
                    
                    <div>
                        <input type="number" placeholder="mm" class="fields" min="1" max="12" name="m" value="<%=m%>"/>
                        <input type="number" placeholder="yyyy" class="fields" min="1" name="y" value="<%=y%>"/>
                    </div>
                    
                    <input type="submit" value="Consultar" id="btn-calendar"/>

                </form>
            </div>
        </article>
        
        
        <footer>
            <p><b>Nome:</b> Fernanda de Moura Cruz</p>
            <p><b>RA:</b> 0000000000</p>
        </footer>
    </body>
</html>

