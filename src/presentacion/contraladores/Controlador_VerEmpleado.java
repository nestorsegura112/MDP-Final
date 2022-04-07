
package presentacion.contraladores;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import presentacion.modelos.Modelo_VerEmpleado;
import presentacion.vistas.Ver_Empleado;




public class Controlador_VerEmpleado implements ActionListener {
    
    private final Modelo_VerEmpleado modelo;
    private int usuario;
    
    public Controlador_VerEmpleado(Ver_Empleado aThis) {
        modelo = aThis.getModelo();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==modelo.getVentana().getIniciar()){
          String c=modelo.getVentana().getCodigo();
          modelo.getInfo(c);
        }
    }
}
