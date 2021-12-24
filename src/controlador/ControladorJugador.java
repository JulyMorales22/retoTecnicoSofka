/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import javax.swing.JOptionPane;
import modelo.Jugador;
import modelo.ModeloJugador;

/**
 *
 * @author Hp
 */
public class ControladorJugador {
    ModeloJugador modeloJugador = new ModeloJugador();

    public ControladorJugador() {
    }
    
    public boolean CrearJugador (String nombres, String numeroIdentificacion){
        boolean conectado = false;
        Jugador jugador1 = new Jugador(nombres, numeroIdentificacion);
        if (nombres.equals("")||  numeroIdentificacion.equals("")){
            JOptionPane.showMessageDialog(null, "por favor llene todos los campos");
        }
        else{
           conectado= modeloJugador.CrearJugador(jugador1);
            //JOptionPane.showMessageDialog(null,"cliente creado con exito");
                
                }return conectado;
              
    }
    
    
    
    
    
}
