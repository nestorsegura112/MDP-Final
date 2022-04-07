
package presentacion.contraladores;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import presentacion.vistas.Cambiar_Empleado;
import presentacion.vistas.Cambiar_Empleado;
import presentacion.modelos.Modelo_CambiarCargo;
import presentacion.modelos.Modelo_CambiarCargo;

public class Controlador_CambiarCargo implements ActionListener {
       
    private Modelo_CambiarCargo  modelo;
    
    public Controlador_CambiarCargo(Cambiar_Empleado aThis) {
        modelo = aThis.getModelo();
    }
  
    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==modelo.getVentana().getButton()){
            System.out.println("aaaa");
           modelo.BuscarEmpleado();
           modelo.Actualizar();
           modelo.getVentana().mostrarMenu();
       }
    }
}
