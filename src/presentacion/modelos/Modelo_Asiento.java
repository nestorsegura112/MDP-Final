/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.modelos;

import java.awt.Color;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import logica.ActualizarAsientos;
import logica.BuscarFecha;
import logica.BuscarOcupados;
import presentacion.vistas.Seleccion_Asientos;

/**
 *
 * @author jhosd
 */
public class Modelo_Asiento {
    private Seleccion_Asientos Vista ;
    String tipo;
    int funcion,cantidad,inicial;
    ArrayList<String> seleccionados = new ArrayList<String>();
    
    public Seleccion_Asientos getVentana() {
        if (Vista == null) {
            Vista = new Seleccion_Asientos(this, tipo);
        }
        return Vista;
    }
    
    public void iniciar(int funcion,String tipo,int cantidad){
        this.tipo=tipo;
        this.funcion=funcion;
        this.cantidad=cantidad;
        inicial=cantidad;
        getVentana().setVisible(true);
        setOcupados();
    }
    
    public int getCantidad(){
        return cantidad;
    }
    
    public ArrayList getSeleccionados(){
        return seleccionados;
    }
    
    public int getInicial(){
        return inicial;
    }
    
    public String getTipo(){
        return tipo;
    }
    
    public int getFuncion(){
        return funcion;
    }
    
    public void setOcupados(){
        BuscarOcupados b = new BuscarOcupados();
        ResultSet rs = b.Buscar(funcion);
        try{
            while(rs.next()){
                String s=rs.getString(1);
                getVentana().getJbutton(s).setBackground(Color.red);
                getVentana().getJbutton(s).setEnabled(false);
            }
        }
        catch(SQLException ex){
            
        }
    }
    
    public void seleccionar(String s){
        Color c = getVentana().getJbutton(s).getBackground();
        Color d=new Color(238,238,238);
        if(c.equals(d)&&getCantidad()!=0){
            getVentana().getJbutton(s).setBackground(Color.BLUE);
            seleccionados.add(getVentana().getJbutton(s).getText());
            cantidad--;
        }
        else if(c.equals(Color.BLUE)){
            getVentana().getJbutton(s).setBackground(d);
            seleccionados.remove(getVentana().getJbutton(s).getText());
            cantidad++;
        }
        else if(getCantidad()==0){
            JOptionPane.showMessageDialog(null, "No puedes selecionar mas asientos");
        }
    }
    
}
