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
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author Hp
 */
public class ModeloPreguntas {
    
    
    
    ConexionJDBC JDBC = new ConexionJDBC();
    
    List<Opciones> opciones = new ArrayList<>();
    List<Pregunta> preguntas = new ArrayList<>();
     public List<Pregunta> Buscar_Pregunta (){
       Pregunta pregunta= null;
        try(Connection conexion=DriverManager.getConnection(JDBC.getUrl(), JDBC.getUser(), JDBC.getPassword())){
            String query = "SELECT * FROM pregunta INNER JOIN categoria ON (categoria.id = pregunta.id_categoria) INNER JOIN dificultad ON (dificultad.id = pregunta.id_dificultad)";
            PreparedStatement stamentvalidar =  conexion.prepareStatement(query);
            //stamentvalidar.setString(1,nombre);
            ResultSet resultado =stamentvalidar.executeQuery();
            while (resultado.next() ){
                int idPregunta = resultado.getInt(1);
                String descripcion = resultado.getString(2);
                int valorPremio = resultado.getInt(3);
                int idDificultad = resultado.getInt(4);
                int idCategoria = resultado.getInt(5);
                int opcionCorrecta = resultado.getInt(7);
                String descripcionCategoria = resultado.getString(9);
                String descripcionDificultad = resultado.getString(11);
                String query2="SELECT * FROM opciones WHERE id_pregunta = ?";
                PreparedStatement stamentvalidar2 =  conexion.prepareStatement(query2);
                stamentvalidar2.setInt(1,idPregunta);
                ResultSet resultado2 =stamentvalidar2.executeQuery();
                while(resultado2.next()){
                    int idOpcion = resultado2.getInt(1);
                    String opcionesRespuesta = resultado2.getString(2);
                    int idPregunta2 = resultado2.getInt(3);
                Opciones opcion = new Opciones(idOpcion, opcionesRespuesta, pregunta);
                opciones.add(opcion);
                }
                Categoria categoria= new Categoria(idCategoria, descripcionCategoria);
                Dificultad dificultad = new Dificultad(idDificultad,descripcionDificultad);
                pregunta= new Pregunta(idPregunta,categoria, descripcion,dificultad,opciones,opcionCorrecta,valorPremio);
             
                preguntas.add(pregunta);
                opciones=new ArrayList<>();
                
            }
            return preguntas;
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "no se pudo realizar la busquedad error "+e.getMessage());  
            return preguntas;
       }
    
}
    
    
}
    
   
