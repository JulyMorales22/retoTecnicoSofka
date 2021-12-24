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
public class Jugador {
    private int id;
    private String nombres;
    private String numeroIdentificacion;
    private int premioAcumulado;
    private Pregunta pregunta;

    public Jugador(int id, String nombres, String numeroIdentificacion, int premioAcumulado, Pregunta pregunta) {
        this.id = id;
        this.nombres = nombres;
        this.numeroIdentificacion = numeroIdentificacion;
        this.premioAcumulado = premioAcumulado;
        this.pregunta = pregunta;
    }
    
    public Jugador(String nombres, String numeroIdentificacion) {
        
        this.nombres = nombres;
        this.numeroIdentificacion = numeroIdentificacion;
        
    }
    public Jugador(int premioAcumulado){
        this.premioAcumulado = premioAcumulado;
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
     * @return the nombres
     */
    public String getNombres() {
        return nombres;
    }

    /**
     * @param nombres the nombres to set
     */
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    /**
     * @return the numeroIdentificacion
     */
    public String getNumeroIdentificacion() {
        return numeroIdentificacion;
    }

    /**
     * @param numeroIdentificacion the numeroIdentificacion to set
     */
    public void setNumeroIdentificacion(String numeroIdentificacion) {
        this.numeroIdentificacion = numeroIdentificacion;
    }

    /**
     * @return the premioAcumulado
     */
    public int getPremioAcumulado() {
        return premioAcumulado;
    }

    /**
     * @param premioAcumulado the premioAcumulado to set
     */
    public void setPremioAcumulado(int premioAcumulado) {
        this.premioAcumulado = premioAcumulado;
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
