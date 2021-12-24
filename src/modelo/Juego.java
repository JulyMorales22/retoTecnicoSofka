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
public class Juego {
    private int id;
    private Jugador jugador;
    private int premioAcumulado;
    private int ronda;

    public Juego(int id, Jugador jugador, int premioAcumulado, int ronda) {
        this.id = id;
        this.jugador = jugador;
        this.premioAcumulado = premioAcumulado;
        this.ronda = ronda;
    }
    
    public Juego( Jugador jugador, int premioAcumulado, int ronda) {
        
        this.jugador = jugador;
        this.premioAcumulado = premioAcumulado;
        this.ronda = ronda;
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
     * @return the jugador
     */
    public Jugador getJugador() {
        return jugador;
    }

    /**
     * @param jugador the jugador to set
     */
    public void setJugador(Jugador jugador) {
        this.jugador = jugador;
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
     * @return the ronda
     */
    public int getRonda() {
        return ronda;
    }

    /**
     * @param ronda the ronda to set
     */
    public void setRonda(int ronda) {
        this.ronda = ronda;
    }
    
    
    
}
