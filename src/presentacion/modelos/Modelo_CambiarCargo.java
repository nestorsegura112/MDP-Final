
package presentacion.modelos;

import logica.BuscarEmpleado;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import logica.ActualizarEmpleado;
import logica.BuscarIdMultiplex;
import presentacion.vistas.Cambiar_Empleado;
import presentacion.vistas.Cambiar_Empleado;

public class Modelo_CambiarCargo {
    
    private int Codigo = 0;
    private Cambiar_Empleado Vista ;
    
    public void Iniciar(){
        getVentana().setVisible(true);
    }
    public Cambiar_Empleado getVentana() {
        if (Vista == null) {
            Vista = new Cambiar_Empleado(this);
        }
        return Vista;
    }
    
    public int getCodigo(){
        return Codigo;
    }
    
    public void Actualizar(){
        
        if(Codigo==0){
            JOptionPane.showMessageDialog(null, "no encontrado");
        }else{
            ActualizarEmpleado m = new ActualizarEmpleado();
            m.Actualizar(Codigo, getVentana().getCargo().getText());
        }
    }
        
    public void BuscarEmpleado(){
        
        if("".equals(getVentana().getCodigo().getText()) || "".equals(getVentana().getCodigo().getText())){
            
            JOptionPane.showMessageDialog(null, "No deje campos vacios");
        }else{
       
        System.out.println(Integer.parseInt(getVentana().getCodigo().getText()));
        BuscarEmpleado m = new BuscarEmpleado();
        ResultSet rs = m.Buscar(Integer.parseInt(getVentana().getCodigo().getText()));
        
        try{
            while(rs.next()){
              
                Codigo = rs.getInt(1);
            }
        }
        catch(SQLException ex){
            
        }
        }
        
    }
    
}
