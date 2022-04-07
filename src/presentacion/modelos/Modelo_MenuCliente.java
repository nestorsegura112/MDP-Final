/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.modelos;

import java.sql.ResultSet;
import java.sql.SQLException;
import logica.BuscarMultiplex;
import logica.BuscarPeliculasCliente;
import logica.Estado;
import logica.EstadoBloqueado;
import logica.EstadoDisponible;
import presentacion.vistas.Menu_Cliente;

/**
 *
 * @author jhosd
 */
public class Modelo_MenuCliente {
    
    private Menu_Cliente Vista ;
    private Estado estado;
    
    public Menu_Cliente getVentana() {
        if (Vista == null) {
            Vista = new Menu_Cliente(this);
        }
        return Vista;
    }
    
    public void iniciar(){
        getVentana().setVisible(true);
        buscarMultiplex();
    }

    private void buscarMultiplex() {
        BuscarMultiplex m= new BuscarMultiplex();
        ResultSet rs = m.Buscar();
        try{
            while(rs.next()){
                getVentana().getCombobox().addItem(rs.getString(1)); 
            }
        }
        catch(SQLException ex){
            
        }
    }
    
    public Boolean validarEstado(){
        BuscarPeliculasCliente m= new BuscarPeliculasCliente();
        ResultSet rs = m.Buscar();
        try{
            if(rs.next()){
                estado = new EstadoDisponible();
            }
            else{
                estado = new EstadoBloqueado();
            }
        }
        catch(SQLException ex){
            
        }
        return estado.ConsultarEstado();
    }
    
    
}
