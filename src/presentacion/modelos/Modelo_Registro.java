
package presentacion.modelos;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import logica.BuscarIdMultiplex;
import logica.BuscarMultiplex;
import logica.IngresarEmpleados;
import presentacion.vistas.Registro;



public class Modelo_Registro {
    
    private int idMultiplex;
    
    private Registro Vista ;
    
    public void Iniciar(){
        getVentana().setVisible(true);
        BuscarMultiplex();
    }
    public Registro getVentana() {
        if (Vista == null) {
            Vista = new Registro(this);
        }
        return Vista;
    }

    public void BuscarMultiplex(){
        
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
    
    public void BuscaIdMultiplex(){
        BuscarIdMultiplex m= new BuscarIdMultiplex();
        ResultSet rs = m.Buscar((String)getVentana().getCombobox().getSelectedItem());
        try{
            while(rs.next()){
               idMultiplex = rs.getInt(1); 
                System.out.println(idMultiplex);
            }
        }
        catch(SQLException ex){
            
        }
    }
    
    public void IngresarEmpleados(){
        if(getVentana().getCodigo().getText().equals("")||getVentana().getFecha().getText().equals("")||getVentana().getSalario().getText().equals("")||getVentana().getCargo().getText().equals("")||getVentana().getTelefono().getText().equals("")||getVentana().getCedula().getText().equals("")){
            JOptionPane.showMessageDialog(null, "No deje espacios en blanco");
        }else{
            IngresarEmpleados a = new IngresarEmpleados();
            int codigo = Integer.parseInt(getVentana().getCodigo().getText());
            int cedula = Integer.parseInt(getVentana().getCedula().getText());
            int telefono = Integer.parseInt(getVentana().getTelefono().getText());
            String cargo = getVentana().getCargo().getText();
            int salario = Integer.parseInt(getVentana().getSalario().getText());
            String fecha = getVentana().getFecha().getText();
            a.ingresar(codigo, cedula, telefono, cargo, salario, fecha, idMultiplex);
            getVentana().mostrarMenu();
        }
    }
}
