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
public class Tasks {
    
    private long rowid;    
    private String title;
    private String name;
    
      public static ArrayList<Tasks> getList() throws Exception{
        ArrayList<Tasks> list = new ArrayList<>();
        Connection con = FernandaDbListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT rowid, * FROM Fernanda_tasks");
        while(rs.next()){
            long rowid = rs.getLong("rowid");
            String title = rs.getString("title");
            String name = rs.getString("name");
            
            list.add(new Tasks(rowid, title, name));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    
      
       public static void addTask(String title,String name) throws Exception{
        
        Connection con = FernandaDbListener.getConnection();
        String sql  = "INSERT INTO Fernanda_tasks(title, name) "
                        + "values(?,?)";

        //possibilita a execução de comandos no bd
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, title);
        stmt.setString(2, name);
        
        //metodo execute
        stmt.execute();
        stmt.close();
        con.close();
    }
    
    public static void removeTask(String title) throws Exception{
        
        Connection con = FernandaDbListener.getConnection();
       
        String sql  = "DELETE FROM Fernanda_tasks WHERE title = ?";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, title);
        stmt.execute();
        stmt.close();
        con.close();
    }
    

    public long getRowid() {
        return rowid;
    }

    public void setRowid(long rowid) {
        this.rowid = rowid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Tasks(long rowid, String title, String name) {
        this.rowid = rowid;
        this.title = title;
        this.name = name;
    }
    
    
}    