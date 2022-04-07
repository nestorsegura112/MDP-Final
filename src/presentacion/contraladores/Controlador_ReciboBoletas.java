/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.contraladores;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import presentacion.modelos.Modelo_ReciboBoletas;
import presentacion.vistas.ReciboBoletas;

/**
 *
 * @author jhosd
 */
public class Controlador_ReciboBoletas implements ActionListener{
    
    private Modelo_ReciboBoletas  modelo;
    
    public Controlador_ReciboBoletas(ReciboBoletas aThis) {
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
