/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.contraladores;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import presentacion.modelos.Modelo_Seleccion;
import presentacion.vistas.Seleccion;

/**
 *
 * @author jhosd
 */
public class Controlador_Seleccion implements ActionListener{
    
    private Modelo_Seleccion  modelo;
    String multiplex;
    int cont=1;
    
    public Controlador_Seleccion(Seleccion aThis,String m) {
        modelo = aThis.getModelo();
        multiplex=m;
        if(cont>=modelo.getCantidad(m)){
            modelo.getVentana(m).siguiente().setEnabled(false);
        }
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==modelo.getVentana(multiplex).confirmar()){
            int f=modelo.getFuncion();
            String s=modelo.getAsiento();
            if(s!=null){
                modelo.getVentana(multiplex).mostrarAsientos(f,s);
            }
            else{
                System.out.println("No hay asientos");
            }
        }
        if(e.getSource()==modelo.getVentana(multiplex).getTipo() && modelo.getVentana(multiplex).getTipo().getSelectedItem()!=null){
            modelo.setSpinner();
        }
        if(e.getSource()==modelo.getVentana(multiplex).getHora()){
            modelo.setTipo();
        }
        if(e.getSource()==modelo.getVentana(multiplex).getFecha()){
            modelo.setHora();
        }
        if(e.getSource()==modelo.getVentana(multiplex).anterior()){
            cont--;
            modelo.getPelicula(multiplex, cont);
            modelo.setFecha();
        }
        else if(e.getSource()==modelo.getVentana(multiplex).siguiente()){
            cont++;
            modelo.getPelicula(multiplex, cont);
            modelo.setFecha();
        }
        if(cont==1){
            modelo.getVentana(multiplex).anterior().setEnabled(false);
        }
        if(cont>1){
            modelo.getVentana(multiplex).anterior().setEnabled(true);
        }
        if(cont==modelo.getCantidad(multiplex)){
            modelo.getVentana(multiplex).siguiente().setEnabled(false);
        }
        if(cont<modelo.getCantidad(multiplex)){
            modelo.getVentana(multiplex).siguiente().setEnabled(true);
        }
    }
    
}
