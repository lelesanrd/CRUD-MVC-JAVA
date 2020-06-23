/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.covid.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Leand
 */
public class Conexion {
    
    private final static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private final static String JDBC_URL    = "jdbc:mysql://localhost:3306/pruebas?useSSL=false&serverTimezone=UTC";
    private final static String JDBC_USER   = "root";
    private final static String JDBC_PASS   = "admin";
    
    Connection conn;
    
    public Conexion(){
        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(JDBC_URL,JDBC_USER,JDBC_PASS);
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Ops! Error: " + e);
        }
    }
  
    public Connection getConnection(){
        return conn;
    }

}
