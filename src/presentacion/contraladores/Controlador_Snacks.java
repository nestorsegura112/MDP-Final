
package presentacion.contraladores;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import presentacion.modelos.Modelo_Snacks;
import presentacion.vistas.Snacks;




public class Controlador_Snacks implements ActionListener {
    
    private final Modelo_Snacks modelo;
    private int usuario;
    
    public Controlador_Snacks(Snacks aThis) {
        modelo = aThis.getModelo();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==modelo.getVentana().getConfirmar()){
          modelo.confirm();
          modelo.getVentana().mostrarRecibo();
        }
    }
}
