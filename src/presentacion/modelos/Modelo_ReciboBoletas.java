/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.modelos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import logica.ActualizarAsientos;
import logica.BuscarFuncionRecibo;
import logica.BuscarIdAsiento;
import logica.BuscarMultiplex;
import presentacion.vistas.ReciboBoletas;

/**
 *
 * @author jhosd
 */
public class Modelo_ReciboBoletas {
    
    private ReciboBoletas Vista ;
    private int funcion,cantidad;
    private ArrayList asientos;
    private String tipo;
    
    public ReciboBoletas getVentana() {
        if (Vista == null) {
            Vista = new ReciboBoletas(this);
        }
        return Vista;
    }
    
    public void iniciar(int funcion,ArrayList asientos,String tipo,int cantidad){
        this.cantidad=cantidad;
        this.funcion=funcion;
        this.asientos=asientos;
        this.tipo=tipo;
        getVentana().setVisible(true);
        crearRecibo();
    }
    
    public void crearRecibo(){
        getVentana().getSillas().setText("Sillas:  "+asientos);
        BuscarFuncionRecibo b=new BuscarFuncionRecibo();
        ResultSet rs=b.buscar(funcion);
        try{
            while(rs.next()){
                getVentana().getSala().setText("Sala:  "+rs.getInt(1)+"  "+rs.getString(2));
                getVentana().getFecha().setText("Fecha:  "+rs.getString(3));
                getVentana().getHora().setText("Hora:  "+rs.getString(4));
                getVentana().getPelicula().setText("Pelicula:  "+rs.getString(5));
            }
        }
        catch(SQLException ex){
            
        }
        int precio=0;
        if(tipo.equals("General")){
            precio=cantidad*11000;
        }
        else if(tipo.equals("Preferencial")){
            precio=cantidad*15000;
        }
        getVentana().getPrecio().setText("Precio a pagar:  "+precio);
    }
    
    public void actualizar(){
        ActualizarAsientos a=new ActualizarAsientos();
        for(int i=0;i<asientos.size();i++){
            BuscarIdAsiento m= new BuscarIdAsiento();
            ResultSet rs = m.Buscar((String)asientos.get(i));
            int s=0;
            try{
                while(rs.next()){
                    s=rs.getInt(1);
                }
            }
            catch(SQLException ex){
            }
            a.actualizar(funcion,s);
        }
        JOptionPane.showMessageDialog(null, "Pago realizado correctamente");
    }
    
}
