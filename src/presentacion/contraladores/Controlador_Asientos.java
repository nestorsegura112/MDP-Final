/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.contraladores;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;
import presentacion.modelos.Modelo_Asiento;
import presentacion.vistas.Seleccion_Asientos;

/**
 *
 * @author jhosd
 */
public class Controlador_Asientos implements ActionListener{

    private Modelo_Asiento  modelo;
    
    public Controlador_Asientos(Seleccion_Asientos aThis) {
        modelo = aThis.getModelo();
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==modelo.getVentana().confirmar()){
            if(modelo.getCantidad()!=0){
                JOptionPane.showMessageDialog(null, "tiene "+modelo.getCantidad()+" asientos sin seleccionar");
            }
            else{
                modelo.getVentana().mostrarRecibo(modelo.getFuncion(), modelo.getSeleccionados(),modelo.getTipo(), modelo.getInicial());
            }
        }
        else{
            modelo.seleccionar(e.getActionCommand());
        }
    }
    
}
