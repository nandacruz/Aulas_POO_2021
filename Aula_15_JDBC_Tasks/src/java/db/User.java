/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.*;
import java.util.ArrayList;
import web.DbListener;

/**
 *
 * @author FERNANDADEMOURACRUZ
 */


public class User {
    private String login;
    private String name;
    private String role;
    
    //criando tabela
    public static String getCreateStatement(){
        return "CREATE TABLE IF NOT EXISTS users("
                + "login VARCHAR(50) UNIQUE NOT NULL,"
                + "name VARCHAR(200) NOT NULL,"
                + "role VARCHAR(20) NOT NULL,"
                + "password_hash LONG NOT NULL"
                + ")";
    }
    
    
    //array
    public static ArrayList<User> getUsers() throws Exception{
        ArrayList<User> list = new ArrayList<>();
        Connection con = DbListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * from users");
        while(rs.next()){
            String login = rs.getString("login");
            String name = rs.getString("name");
            String role = rs.getString("role");
            list.add(new User(login, name, role));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    
    public static User getUser(String login, String password) throws Exception{
       
        User user = null;
        Connection con = DbListener.getConnection();
        
        String sql = "SELECT * FROM users WHERE login=? AND password_hash=?";
        PreparedStatement stmt = con.prepareStatement(sql);
        
        stmt.setString(1, login);
        stmt.setLong(2, password.hashCode());
        
        ResultSet rs = stmt.executeQuery();
       //Inicializando um nov usuario
       if(rs.next()){
        
           String name = rs.getString("name");
           String role = rs.getString("role");
           user = new User(login, name,role);
          
       }

        stmt.close();
        con.close();
        return user;
    }
    
    
    //inserindo usuario
    public static void InsertUser(String login, String name, String role, String password) throws Exception{
        
        Connection con = DbListener.getConnection();
        String sql = "INSERT INTO users(login, name, role, password_hash) "
                + "VALUES(?,?,?,?)";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, login);
        stmt.setString(2, name);
        stmt.setString(3, role);
        stmt.setLong(4, password.hashCode());
        stmt.execute();
        stmt.close();
        con.close();
    }
    
    //deletando usuario
    public static void DeleteUser(String login) throws Exception{
        
        Connection con = DbListener.getConnection();
        String sql = "DELETE FROM users WHERE login=?";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, login);
        stmt.execute();
        stmt.close();
        con.close();
    }
    
     public static void ChangePassword(String login, String password) throws Exception{
        Connection con = DbListener.getConnection();
        String sql = "UPDATE users SET password_hash = ? WHERE login = ?";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setLong(1, password.hashCode());
        stmt.setString(2, login);
        stmt.execute();
        stmt.close();
        con.close();
    }
    
    
    //construtor
    public User(String login, String name, String role) {
        this.login = login;
        this.name = name;
        this.role = role;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    
    
    
}
