
package presentacion.modelos;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.SpinnerNumberModel;
import logica.BuscarIdMultiplex;
import logica.BuscarNombreMultiplex;
import logica.Inicio_Snacks;
import logica.Inicio_VerEmpleado;
import presentacion.vistas.Snacks;


public class Modelo_Snacks{
    
    private Snacks Vista ;
    private Inicio_Snacks s;
    private String multiplex;
    private int id = 0;
    private int[] total = new int[6];
    
    public Snacks getVentana() {
        if (Vista == null) {
            Vista = new Snacks(this);
        }
        return Vista;
    }
    
    public Modelo_Snacks(){
        
    }
    
    public void iniciar(String multiplex){
        getVentana().setVisible(true);
        this.multiplex=multiplex;
        idMultiplex();
        snacks();
    }
    
    public void idMultiplex(){
        BuscarIdMultiplex multi = new BuscarIdMultiplex();
        ResultSet rs = multi.Buscar(multiplex);
        try {
            while(rs.next()){
                id = rs.getInt(1);
            }
        }catch (SQLException ex) {
        }
    }
    
    public int getIdMultiplex(){
        return id;
    }
    
    public void snacks(){
        s = new Inicio_Snacks();
        ResultSet rs = s.comprobarSnacks();
        if(rs==null){
        }else{
            try {
                int i=0;
                while(rs.next()){
                    getVentana().getLabel()[i].setText(rs.getString(2));
                    getVentana().getPrecio()[i].setText("$"+rs.getInt(3));
                    i++;
                }
            }catch (SQLException ex) {
            }
        }
        
        rs = s.comprobarDatos(id);
        if(rs==null){
            JOptionPane.showMessageDialog(null, "No hay snacks");
        }else{
            try {
                int i=0;
                    System.out.println(id);
                while(rs.next()){
                    getVentana().getLabel()[i].setText(getVentana().getLabel()[i].getText()+ "   (Disponibles "+ rs.getInt(1)+ ")");
                    SpinnerNumberModel model1 = new SpinnerNumberModel(0,0,rs.getInt(1),1);
                    getVentana().getSpinner()[i].setModel(model1);
                    i++;
                }
            }catch (SQLException ex) {
            }
        }
    }
    
    public int[] getTotal(){
        return total;
    }
    
    public void confirm() {
        String s;
        for(int i = 0; i<6; i++){
            s=getVentana().getSpinner()[i].getValue().toString();
            int cantidad=Integer.parseInt(s);
            total[i]= cantidad;
        }
    }
}
