/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.util.List;
import modelo.ModeloPreguntas;
import modelo.Pregunta;

/**
 *
 * @author Hp
 */
public class ControladorPreguntas {
    
    ModeloPreguntas modeloPreguntas = new ModeloPreguntas();
    
    
    public List<Pregunta> Buscar_Preguntas (){
       return modeloPreguntas.Buscar_Pregunta();
        
    }
    
}
