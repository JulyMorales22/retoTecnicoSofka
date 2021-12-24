/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Hp
 */
public class ModeloJugador {
    ConexionJDBC JDBC = new ConexionJDBC();

    public ModeloJugador() {
    }
    
    
    public boolean CrearJugador(Jugador jugador){
       boolean conectado=false;
    try(Connection conexion=DriverManager.getConnection(JDBC.getUrl(), JDBC.getUser(), JDBC.getPassword())){
    String query = "INSERT INTO jugador (nombres,numeroIdentificacion) VALUES (?,?)";
        PreparedStatement stamentJugador =  conexion.prepareStatement(query);
        stamentJugador.setString(1,jugador.getNombres());
        stamentJugador.setString(2,jugador.getNumeroIdentificacion());
        int resultado=stamentJugador.executeUpdate();
     if (resultado>0){
         conectado=true;
         //JOptionPane.showMessageDialog(null, "cliente creado");
     }return conectado; 
    }catch(Exception e){
        JOptionPane.showMessageDialog(null, "no se pudo conectar  a la base de datos "+e.getMessage());
       return conectado;
   }
        
    }
    
    
    
}