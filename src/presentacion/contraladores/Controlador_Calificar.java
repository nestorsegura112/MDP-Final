/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.contraladores;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import presentacion.vistas.Calificar;
import presentacion.modelos.Modelo_Calificar;

/**
 *
 * @author jhosd
 */
public class Controlador_Calificar implements ActionListener{
    private Modelo_Calificar  modelo;
    
    public Controlador_Calificar(Calificar aThis) {
        modelo = aThis.getModelo();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==modelo.getVentana().getBoton()){
            modelo.getVentana().volverMenu();
        }
        if(e.getSource()==modelo.getVentana().getBotonCalificar()){
            modelo.calificar();
        }
    }
}
