/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.modelos;

import java.sql.ResultSet;
import java.sql.SQLException;
import logica.BuscarIdPelicula;
import logica.BuscarPeliculasCliente;
import logica.CalificarPelicula;
import logica.EstadoBloqueado;
import logica.EstadoDisponible;
import presentacion.vistas.Calificar;

/**
 *
 * @author jhosd
 */
public class Modelo_Calificar {
    private Calificar Vista ;
    
    public Calificar getVentana() {
        if (Vista == null) {
            Vista = new Calificar(this);
        }
        return Vista;
    }
    
    public void iniciar(){
        getVentana().setVisible(true);
        buscarPeliculas();
    }
    
    public void buscarPeliculas(){
        BuscarPeliculasCliente m= new BuscarPeliculasCliente();
        ResultSet rs = m.Buscar();
        try{
            while(rs.next()){
                getVentana().getCombobox().addItem(rs.getString(1));
            }
        }
        catch(SQLException ex){
            
        }
    }
    
    public void calificar(){
        BuscarIdPelicula i=new BuscarIdPelicula();
        ResultSet rs = i.Buscar((String)getVentana().getCombobox().getSelectedItem());
        try{
            int id=0;
            while(rs.next()){
                id=rs.getInt(1);
            }
            CalificarPelicula c=new CalificarPelicula();
            String s = getVentana().getSpinner().getValue().toString();
            int nota=Integer.parseInt(s);
            c.calificar(id,nota);
        }
        catch(SQLException ex){
            
        }
        
        
    }
}
