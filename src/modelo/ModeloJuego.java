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
import java.util.LinkedList;
import javax.swing.JOptionPane;

/**
 *
 * @author Hp
 */
public class ModeloJuego {
    
    ConexionJDBC JDBC = new ConexionJDBC();

    public ModeloJuego() {
    }
    
     public boolean guardar_Juego(Juego juego){
       boolean conectado=false;
    try(Connection conexion=DriverManager.getConnection(JDBC.getUrl(), JDBC.getUser(), JDBC.getPassword())){
    String query2 = "SELECT jugador.id FROM jugador WHERE numeroIdentificacion = ?";
    PreparedStatement stamentjuego2 =  conexion.prepareStatement(query2);
    stamentjuego2.setString(1, juego.getJugador().getNumeroIdentificacion());
    int id_jugador=1;
    ResultSet resultado2 =stamentjuego2.executeQuery();
    while(resultado2.next()){
        id_jugador = id_jugador=resultado2.getInt(1);
       // String numero_identificacion=resultado2.getString(3);
    }
    String query = "INSERT INTO juego (premioAcumulado,ronda,id_jugador) VALUES (?,?,?)";
        PreparedStatement stamentjuego =  conexion.prepareStatement(query);
        stamentjuego.setInt(1,juego.getPremioAcumulado());
        stamentjuego.setInt(2,juego.getRonda());
        stamentjuego.setInt(3,id_jugador);
        int resultado=stamentjuego.executeUpdate();
     if (resultado>0){
         conectado=true;
         //JOptionPane.showMessageDialog(null, "cliente creado");
     }return conectado; 
    }catch(Exception e){
        JOptionPane.showMessageDialog(null, "no se pudo conectar  a la base de datos "+e.getMessage());
       return conectado;
   }
        
    }
   
     public  LinkedList<Juego> Historico (){
       LinkedList<Juego> HistoricoList= new LinkedList<>();
        try(Connection conexion=DriverManager.getConnection(JDBC.getUrl(), JDBC.getUser(), JDBC.getPassword())){
            String query = "SELECT * FROM juego INNER JOIN jugador ON (jugador.id = juego.id_jugador)";
            PreparedStatement stamentvalidar =  conexion.prepareStatement(query);
            ResultSet resultado =stamentvalidar.executeQuery();
            while (resultado.next() ){
                int idJuego = resultado.getInt(1);
                int  idJugador = resultado.getInt(4);    
                int premioAcumulado = resultado.getInt(2);
                int ronda = resultado.getInt(3);
                String nombreJugador = resultado.getString(6);
                String numeroIdentificacion = resultado.getString(7);
                Jugador jugador = new Jugador( nombreJugador,numeroIdentificacion);
               Juego juego = new Juego(idJuego,jugador, premioAcumulado, ronda);
                HistoricoList.add(juego);
            }
            return HistoricoList;
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "no se pudo realizar la busquedad error "+e.getMessage());   
       }return HistoricoList;
  
    
}
    
    
    
}
