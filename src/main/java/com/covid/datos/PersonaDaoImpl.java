package com.covid.datos;

import com.covid.conexion.Conexion;
import com.covid.domain.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Leand
 */
public class PersonaDaoImpl  implements PersonaDao{

    Conexion cn = new Conexion();
    Connection conn;
    PreparedStatement psmtp;
    ResultSet rs;
    Persona p = new Persona();

    @Override
    public List<Persona> listar() {
        ArrayList<Persona> list = new ArrayList<>();
        String query_select = "SELECT * FROM persona";
        try {
            conn = cn.getConnection();
            psmtp = conn.prepareStatement(query_select);
            rs = psmtp.executeQuery();
            while (rs.next()) {
                Persona p = new Persona();
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setFechaDeNacimiento(rs.getDate("fechaDeNacimiento").toString());
                list.add(p);
            }
        } 
        catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return list;
    }

    @Override
    public Persona list(int id) {
        String query_list = "SELECT * FROM persona WHERE id=" + id;
        try {
            conn = cn.getConnection();
            psmtp = conn.prepareStatement(query_list);
            rs = psmtp.executeQuery();
            while (rs.next()) {
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setFechaDeNacimiento(rs.getDate("fechaDeNacimiento").toString());
            }
        } 
        catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        
        return p;

    }

    @Override
    public boolean agregar(Persona p) {
        String query_add = "INSERT INTO persona(nombre, fechaDeNacimiento) VALUES ('"+ p.getNombre() +"' , '"+ p.getFechaDeNacimiento() +"')";
        
        try {
            conn = cn.getConnection();
            psmtp = conn.prepareStatement(query_add);
            psmtp.executeUpdate();
        } 
        catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return false;
    }

    @Override
    public boolean editar(Persona p) {
        String query_update = "UPDATE persona SET Nombre = '"+ p.getNombre() + " ' , " + "fechaDeNacimiento = '"+ p.getFechaDeNacimiento() + " ' " + "WHERE id = " + p.getId();
        try {
            conn = cn.getConnection();
            psmtp = conn.prepareStatement(query_update);
            psmtp.executeUpdate();
        } 
        catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return false;

    }

    @Override
    public boolean eliminar(int id) {
          String sql="delete from persona where Id="+id;
        try {
            conn=cn.getConnection();
            psmtp=conn.prepareStatement(sql);
            psmtp.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return false;
    }
}
