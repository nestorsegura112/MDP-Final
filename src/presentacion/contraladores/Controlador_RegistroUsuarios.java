/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.contraladores;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import presentacion.modelos.Modelo_RegistroUsuarios;
import presentacion.vistas.RegistroUsuarios;




public class Controlador_RegistroUsuarios implements ActionListener {
    
    private final Modelo_RegistroUsuarios modelo;
    private int usuario;
    
    public Controlador_RegistroUsuarios(RegistroUsuarios aThis) {
        modelo = aThis.getModelo();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==modelo.getVentana().getRegistrar()){
          modelo.registrar();
        }
    }
}

