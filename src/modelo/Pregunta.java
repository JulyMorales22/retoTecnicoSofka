/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.List;

/**
 *
 * @author Hp
 */
public class Pregunta {
    private int id;
    private Categoria categoria;
    private String descripcion;
    private Dificultad dificultad;
    private List<Opciones> respuestas;
    private int respuetaCorrecta;
    private int valorPremio;

    public Pregunta(int id, Categoria categoria, String descripcion, Dificultad dificultad, List<Opciones> respuestas, int respuetaCorrecta, int valorPremio) {
        this.id = id;
        this.categoria = categoria;
        this.descripcion = descripcion;
        this.dificultad = dificultad;
        this.respuestas = respuestas;
        this.respuetaCorrecta = respuetaCorrecta;
        this.valorPremio = valorPremio;
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
     * @return the categoria
     */
    public Categoria getCategoria() {
        return categoria;
    }

    /**
     * @param categoria the categoria to set
     */
    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the dificultad
     */
    public Dificultad getDificultad() {
        return dificultad;
    }

    /**
     * @param dificultad the dificultad to set
     */
    public void setDificultad(Dificultad dificultad) {
        this.dificultad = dificultad;
    }

    /**
     * @return the respuestas
     */
    public List<Opciones> getRespuestas() {
        return respuestas;
    }

    /**
     * @param respuestas the respuestas to set
     */
    public void setRespuestas(List<Opciones> respuestas) {
        this.respuestas = respuestas;
    }

    /**
     * @return the respuetaCorrecta
     */
    public int getRespuetaCorrecta() {
        return respuetaCorrecta;
    }

    /**
     * @param respuetaCorrecta the respuetaCorrecta to set
     */
    public void setRespuetaCorrecta(int respuetaCorrecta) {
        this.respuetaCorrecta = respuetaCorrecta;
    }

    /**
     * @return the valorPremio
     */
    public int getValorPremio() {
        return valorPremio;
    }

    /**
     * @param valorPremio the valorPremio to set
     */
    public void setValorPremio(int valorPremio) {
        this.valorPremio = valorPremio;
    }

    
   
    
    
    
    
    
}
