/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.modelos;

import java.sql.ResultSet;
import java.sql.SQLException;
import logica.BuscarMultiplex;
import logica.BuscarNombreMultiplex;
import logica.Inicio_Cliente;
import logica.Inicio_VerEmpleado;
import presentacion.vistas.Menu_Empleado;

/**
 *
 * @author nesto
 */
public class ModeloMenuEmpleado {
    private Menu_Empleado Vista;
    private int id;
    
    public Menu_Empleado getVentana() {
        if (Vista == null) {
            Vista = new Menu_Empleado(this);
        }
        return Vista;
    }
    
    public void iniciar(int id){
        this.id=id;
        getVentana().setVisible(true);
        buscarMultiplex();
    }
    
    public int buscarCliente(int cedula){
        Inicio_Cliente c= new Inicio_Cliente();
        int ced = c.buscar(cedula);
        return ced;
    }
    
    public String buscarMultiplex() {
        Inicio_VerEmpleado m= new Inicio_VerEmpleado();
        ResultSet rs = m.comprobarDatos(""+id);
        int multi=0;
        try{
            while(rs.next()){
                multi=rs.getInt(7);
            }
        }
        catch(SQLException ex){
            
        }
        BuscarNombreMultiplex b = new BuscarNombreMultiplex();
        rs = b.Buscar(multi);
        String nombreM=null;
        try{
            while(rs.next()){
                nombreM=rs.getString(1);
            }
        }
        catch(SQLException ex){
            
        }
        return nombreM;
    }
}
