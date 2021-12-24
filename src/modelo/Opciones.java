/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Hp
 */
public class Opciones {
    private int id;
    private String opcionesRespuesta;
    private Pregunta pregunta;

    public Opciones(int id, String opcionesRespuesta, Pregunta pregunta) {
        this.id = id;
        this.opcionesRespuesta = opcionesRespuesta;
        this.pregunta = pregunta;
    }

   

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the opcionesRespuesta
     */
    public String getOpcionesRespuesta() {
        return opcionesRespuesta;
    }

    /**
     * @param opcionesRespuesta the opcionesRespuesta to set
     */
    public void setOpcionesRespuesta(String opcionesRespuesta) {
        this.opcionesRespuesta = opcionesRespuesta;
    }

    /**
     * @return the pregunta
     */
    public Pregunta getPregunta() {
        return pregunta;
    }

    /**
     * @param pregunta the pregunta to set
     */
    public void setPregunta(Pregunta pregunta) {
        this.pregunta = pregunta;
    }
    
    
    
}
