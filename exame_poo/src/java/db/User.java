/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.*;
import java.util.ArrayList;
import web.FernandaDbListener;

/**
 *
 * @author FERNANDADEMOURACRUZ
 */
public class User {
    
    private String username;
    private String name;
    private String password;
    
    
     //criando tabela
    public static String getCreateStatement(){
        return "CREATE TABLE IF NOT EXISTS Fernanda_users("
                + "username VARCHAR(50) UNIQUE NOT NULL,"
                + "name VARCHAR(200) NOT NULL,"
                + "password int(20) NOT NULL"
                + ")";
    }
    
     //inserindo usuario
    public static void InsertUser(String username, String name, String password) throws Exception{
        
        Connection con = FernandaDbListener.getConnection();
        String sql = "INSERT INTO users(username, name,password) "
                + "VALUES(?,?,?)";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, username);
        stmt.setString(2, name);
        stmt.setString(3, password);
       
        stmt.execute();
        stmt.close();
        con.close();
    }
    
    //array
    public static ArrayList<User> getUsers() throws Exception{
        ArrayList<User> list = new ArrayList<>();
        Connection con = FernandaDbListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * from users");
        while(rs.next()){
            String username = rs.getString("username");
            String name = rs.getString("name");
            String password = rs.getString("password");
            list.add(new User(username, name, password));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    
    public static User getUser(String username, String password, String name) throws Exception{
       
        User user = null;
        Connection con = FernandaDbListener.getConnection();
        
        String sql = "SELECT * FROM users WHERE login=? AND password=? AND name=?";
        PreparedStatement stmt = con.prepareStatement(sql);
        
        stmt.setString(1, username);
        stmt.setString(2, password);
        stmt.setString(3, name);
        
        ResultSet rs = stmt.executeQuery();
       //Inicializando um nov usuario
       if(rs.next()){
        
           String newname = rs.getString("username");
           String newpassword = rs.getString("password");
           String newusername = rs.getString("name");
           user = new User(username, password,name);
          
       }

        stmt.close();
        con.close();
        return user;
    }

    public User(String username, String name, String password) {
        this.username = username;
        this.name = name;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
    
    
    
}
