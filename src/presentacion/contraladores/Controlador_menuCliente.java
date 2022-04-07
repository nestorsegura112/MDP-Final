/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.contraladores;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;
import presentacion.vistas.Menu_Cliente;
import presentacion.modelos.Modelo_MenuCliente;

/**
 *
 * @author jhosd
 */
public class Controlador_menuCliente implements ActionListener{
    
    private Modelo_MenuCliente  modelo;
    
    public Controlador_menuCliente(Menu_Cliente aThis) {
        modelo = aThis.getModelo();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==modelo.getVentana().ComprarBoletos()){
            modelo.getVentana().MostrarSeleccion();
        }
        else if(e.getSource()==modelo.getVentana().ComprarSnacks()){
            modelo.getVentana().MostrarSnacks();
        }
        else if(e.getSource()==modelo.getVentana().Calificar()){
            boolean estado = modelo.validarEstado();
            if(estado==false){
                JOptionPane.showMessageDialog(null,"Compre boletos en alguna pelicula para poder calificarla");
            }
            else{
                modelo.getVentana().MostrarCalificar();
            }
        }
    }
    
}
