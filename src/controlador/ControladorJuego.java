/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.util.LinkedList;
import javax.swing.JOptionPane;
import modelo.Juego;
import modelo.ModeloJuego;

/**
 *
 * @author Hp
 */
public class ControladorJuego {
    
    ModeloJuego modeloJuego = new ModeloJuego();

    public ControladorJuego() {
    }
    
    public void guardar_Juego(Juego juego){
        modeloJuego.guardar_Juego(juego);
    }
    
    
    public LinkedList<Juego> Historico (){
        LinkedList<Juego> juegoList = null;
        try{
            juegoList=modeloJuego.Historico();
           return juegoList;
        }catch (Exception e){
        JOptionPane.showMessageDialog(null, e.getMessage());
            
        }
        return juegoList;
    } 
    
    
    
    
}
