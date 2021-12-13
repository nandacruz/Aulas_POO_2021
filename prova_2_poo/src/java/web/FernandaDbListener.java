/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;
import java.sql.*;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class FernandaDbListener implements ServletContextListener {
    
    //conectando com banco de dados 
    //o final serve para atrbuir valores que não poderão ser alterados
    public static final String CLASS_NAME = "org.sqlite.JDBC";
    //Aqui estamos atribuindo a URL do banco que vamos utilizar a uma string
    public static final String URL = "jdbc:sqlite:tasks.db";
    
    public static Exception exception = null;
    
    //O método estatico serve para indicar com qual banco queremos conectar, tambem 
    //facilita quando formos utilizar em outras ocasioes a conexão.
    public static Connection getConnection() throws Exception{
        //responsável por se comunicar com todos os drivers que você deixou disponível
        //no caso, a url do banco ja foi atribuida a uma string anteriormente
        return DriverManager.getConnection(URL);
    }
    
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        
        try{
            Class.forName(CLASS_NAME);
            //chamando a conexão
            Connection con = getConnection();
            //comando que vai ser interpretado pelo SGBD
            //este esta sendo invocado pelo objeto connection
            Statement stmt = con.createStatement();
            
            //executando instruções sql
            stmt.execute("create table if not exists Fernanda_tasks( "
                    + "title VARCHAR(40) NOT NULL UNIQUE,"
                    + "name VARCHAR(40) NOT NULL"
                    + ")");
            
            //fechando conexão e liberando os objetos
            stmt.close();
            con.close();
            
        }catch(Exception ex){
            exception = ex;
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }

   
    
   
    
}
