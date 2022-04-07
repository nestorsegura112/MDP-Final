/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.contraladores;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import presentacion.modelos.Modelo_ReciboSnacks;
import presentacion.vistas.ReciboSnacks;

/**
 *
 * @author jhosd
 */
public class Controlador_ReciboSnacks implements ActionListener{
    
    private Modelo_ReciboSnacks  modelo;
    
    public Controlador_ReciboSnacks(ReciboSnacks aThis) {
        modelo = aThis.getModelo();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==modelo.getVentana().pagar()){
            modelo.actualizar();
            modelo.getVentana().mostrarMenu();
        }
    }
}
