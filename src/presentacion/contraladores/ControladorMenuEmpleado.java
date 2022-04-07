/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.contraladores;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;
import logica.Usuario;
import presentacion.vistas.Menu_Empleado;
import presentacion.modelos.ModeloMenuEmpleado;

/**
 *
 * @author nesto
 */
public class ControladorMenuEmpleado implements ActionListener {
    private ModeloMenuEmpleado  modelo;
    
    public ControladorMenuEmpleado(Menu_Empleado aThis) {
        modelo = aThis.getModelo();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==modelo.getVentana().getBotonSnacks()){
            modelo.getVentana().mostrarSnacks(modelo.buscarMultiplex());
        }else if(e.getSource()==modelo.getVentana().getBotonRegistro()){
            modelo.getVentana().mostrarRegistro();
        }else if(e.getSource()==modelo.getVentana().getBotonSeleccion()){
            int cedula = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la cédla del cliente"));
            if(modelo.buscarCliente(cedula)==0){
                JOptionPane.showMessageDialog(null, "No se encontró el cliente.");
            }else{
                Usuario u = Usuario.crearUsuario(""+modelo.buscarCliente(cedula));
                u.desLoggear();
                u = Usuario.crearUsuario(""+modelo.buscarCliente(cedula));
                modelo.getVentana().MostrarSeleccion(modelo.buscarMultiplex());
            }
        }
    }
}
