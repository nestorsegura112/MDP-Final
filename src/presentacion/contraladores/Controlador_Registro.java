
package presentacion.contraladores;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Locale;
import javax.swing.JOptionPane;
import presentacion.modelos.Modelo_Registro;
import presentacion.vistas.Registro;

public class Controlador_Registro implements ActionListener {
       
    private Modelo_Registro  modelo;
    
    public Controlador_Registro(Registro aThis) {
        modelo = aThis.getModelo();
    }
  
    @Override
    public void actionPerformed(ActionEvent e) {
       
       if(e.getSource()==modelo.getVentana().getCombobox() && modelo.getVentana().getCombobox().getSelectedItem()!=null){
           modelo.BuscaIdMultiplex();
       }
       if(e.getSource()==modelo.getVentana().getButton()){
           modelo.IngresarEmpleados();           
       }
    }

}
