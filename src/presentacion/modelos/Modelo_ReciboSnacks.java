/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.modelos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.SpinnerNumberModel;
import logica.ActualizarAsientos;
import logica.ActualizarSnacks;
import logica.BuscarFuncionRecibo;
import logica.BuscarIdAsiento;
import logica.BuscarMultiplex;
import logica.BuscarSnacks;
import logica.Inicio_Snacks;
import presentacion.vistas.ReciboSnacks;

/**
 *
 * @author jhosd
 */
public class Modelo_ReciboSnacks {
    
    private ReciboSnacks Vista ;
    private int[] cantidad;
    private int id;
    
    public ReciboSnacks getVentana() {
        if (Vista == null) {
            Vista = new ReciboSnacks(this);
        }
        return Vista;
    }
    
    public void iniciar(int[] cantidad, int id){
        this.id=id;
        this.cantidad=cantidad;
        getVentana().setVisible(true);
        crearRecibo();
    }
    
    public void crearRecibo(){
        BuscarSnacks b = new BuscarSnacks();
        ResultSet rs = b.Buscar();
        
        try {
                int i=0;
                int total=0;
                while(rs.next()){
                    int p = Integer.parseInt(rs.getString(2));
                    getVentana().getEspacios()[i].setText(rs.getString(1)+ " ("+ cantidad[i]+ ") -  $ "+p*cantidad[i]);
                    total+=p*cantidad[i];
                    i++;
                }
                getVentana().getPrecio().setText("Total a pagar:   $ "+total);
            }catch (SQLException ex) {
            }
    }
    
    public void actualizar(){
        Inicio_Snacks s = new Inicio_Snacks();
        ResultSet rs = s.comprobarDatos(id);
        int i =0;
        try{
            while(rs.next()){
                ActualizarSnacks a = new ActualizarSnacks();
                a.actualizar(id, rs.getInt(1)-cantidad[i], i+1);
                i++;
            }
        }
        catch (SQLException ex){
        }
    }
}
