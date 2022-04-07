
package presentacion.modelos;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import logica.BuscarNombreMultiplex;
import logica.Inicio_VerEmpleado;
import presentacion.vistas.Ver_Empleado;


public class Modelo_VerEmpleado{
    
    private Ver_Empleado Vista ;
    private Inicio_VerEmpleado c;
    
    public Ver_Empleado getVentana() {
        if (Vista == null) {
            Vista = new Ver_Empleado(this);
        }
        return Vista;
    }
    
    public Modelo_VerEmpleado(){
        
    }
    
    public void iniciar(){
        getVentana().setVisible(true);
    }

    public void getInfo(String usuario) {
        c = new Inicio_VerEmpleado();
        ResultSet rs = c.comprobarDatos(usuario);
        int id=0;
        if(rs==null){
            JOptionPane.showMessageDialog(null, "Empleado no encontrado");
        }else{
            try {
                while(rs.next()){
                    getVentana().getLabel2().setText("Cédula: "+rs.getInt(2));
                    getVentana().getLabel3().setText("Teléfono: "+rs.getString(3));
                    getVentana().getLabel4().setText("Cargo: "+rs.getString(4));
                    getVentana().getLabel5().setText("Salario: "+rs.getString(5));
                    getVentana().getLabel6().setText("Fecha de contratación: "+rs.getString(6));
                    id= rs.getInt(7);
                }
            }catch (SQLException ex) {
            }
            BuscarNombreMultiplex b = new BuscarNombreMultiplex();
            rs=b.Buscar(id);
            try {
                while(rs.next()){
                    getVentana().getLabel7().setText("Multiplex: "+rs.getString(1));
                }
            }catch (SQLException ex) {
            }
        }
    }
}
