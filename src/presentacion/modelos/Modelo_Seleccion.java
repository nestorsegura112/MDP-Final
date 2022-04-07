/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.modelos;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.math.RoundingMode;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.SpinnerNumberModel;
import logica.BuscarFecha;
import logica.BuscarFuncion;
import logica.BuscarHora;
import logica.BuscarPelicula;
import logica.BuscarTipoAsiento;
import presentacion.vistas.Seleccion;

/**
 *
 * @author jhosd
 */
public class Modelo_Seleccion {
    
    private Seleccion Vista ;
    String multiplex;
    int general,preferencial;
    
    public Seleccion getVentana(String m) {
        if (Vista == null) {
            Vista = new Seleccion(this,m);
        }
        return Vista;
    }
    
    public void iniciar(String m){
        multiplex=m;
        getVentana(m).setVisible(true);
        getPelicula(m,1);
        setFecha();
    }
    
    public void getPelicula(String m,int cont){
        BuscarPelicula b = new BuscarPelicula();
        ResultSet rs = b.Buscar(m);
        BufferedImage image=null;
        int c=1;
        String peli="";
        int id=0;
        try{
            while(rs.next()){
                if(c==cont){
                    peli=rs.getString(2);
                    id=rs.getInt(3);
                    java.sql.Blob blob = rs.getBlob(1);
                    InputStream in = blob.getBinaryStream();  
                    image = ImageIO.read(in);
                }
                c++;
            }
        }
        catch(SQLException | IOException ex){
            
        }
        ResultSet rs2 = b.BuscarCalificacion(id);
        try{
            boolean v = true;
            while(rs2.next()){
                if(rs2.getBigDecimal(1)!=null){
                    v=false;
                    getVentana(m).getCalificacionPelicula().setText("Calificacion: "+(rs2.getBigDecimal(1).setScale(1, RoundingMode.HALF_UP)));
                }
            }
            if(v){
               getVentana(m).getCalificacionPelicula().setText("No tiene calificacion");
            }
        }
        catch(SQLException ex){
            
        }
        getVentana(m).getImagen().setText("");
        getVentana(m).getImagen().setIcon(new ImageIcon(image));
        getVentana(m).getNombrePelicula().setText(peli);
    }
    
    public int getCantidad(String m){
        int cont=0;
        BuscarPelicula b = new BuscarPelicula();
        ResultSet rs = b.Buscar(m);
        try{
            while(rs.next()){
                cont++;
            }
        }
        catch(SQLException ex){
            
        }
        return cont++;
    }
    
    public void setFecha(){
        getVentana(multiplex).getFecha().removeAllItems();
        BuscarFecha b = new BuscarFecha();
        ResultSet rs = b.Buscar(multiplex,getVentana(multiplex).getNombrePelicula().getText());
        try{
            while(rs.next()){
                getVentana(multiplex).getFecha().addItem(rs.getString(1));
            }
        }
        catch(SQLException ex){
            
        }
        getVentana(multiplex).getHora().setEnabled(true);
    }
    
    public void setHora(){
        getVentana(multiplex).getHora().removeAllItems();
        BuscarHora b = new BuscarHora();
        ResultSet rs = b.Buscar(multiplex,getVentana(multiplex).getNombrePelicula().getText(),(String)getVentana(multiplex).getFecha().getSelectedItem());
        try{
            while(rs.next()){
                getVentana(multiplex).getHora().addItem(rs.getString(1));
            }
        }
        catch(SQLException ex){
            
        }
        getVentana(multiplex).getTipo().setEnabled(true);
    }
    
    public void setTipo(){
        getVentana(multiplex).getTipo().removeAllItems();
        BuscarTipoAsiento b = new BuscarTipoAsiento();
        ResultSet rs = b.Buscar(multiplex,getVentana(multiplex).getNombrePelicula().getText(),(String)getVentana(multiplex).getFecha().getSelectedItem(),"General",(String)getVentana(multiplex).getHora().getSelectedItem());
        try{
            while(rs.next()){
                general=rs.getInt(1);
                general = 40 - general;
                getVentana(multiplex).getTipo().addItem("General ("+general+" disponibles)");
            }
        }
        catch(SQLException ex){
            
        }
        rs = b.Buscar(multiplex,getVentana(multiplex).getNombrePelicula().getText(),(String)getVentana(multiplex).getFecha().getSelectedItem(),"Preferencial",(String)getVentana(multiplex).getHora().getSelectedItem());
        try{
            while(rs.next()){
                preferencial=rs.getInt(1);
                preferencial = 20 - preferencial;
                getVentana(multiplex).getTipo().addItem("Preferencial ("+preferencial+" disponibles)");
            }
        }
        catch(SQLException ex){
            
        }
        getVentana(multiplex).getSpinner().setEnabled(true);
    }
    
    public void setSpinner(){
        if(getVentana(multiplex).getTipo().getSelectedItem().equals("General ("+general+" disponibles)")){
            if(general>=10){
                SpinnerNumberModel model1 = new SpinnerNumberModel(1,1,9,1);
                getVentana(multiplex).getSpinner().setModel(model1);
            }
            else{
                SpinnerNumberModel model1 = new SpinnerNumberModel(1,1,general,1);
                getVentana(multiplex).getSpinner().setModel(model1);
            }
        }
        else if(getVentana(multiplex).getTipo().getSelectedItem().equals("Preferencial ("+preferencial+" disponibles)")){
            if(preferencial>=10){
                SpinnerNumberModel model1 = new SpinnerNumberModel(1,1,9,1);
                getVentana(multiplex).getSpinner().setModel(model1);
            }
            else{
                SpinnerNumberModel model1 = new SpinnerNumberModel(1,1,general,1);
                getVentana(multiplex).getSpinner().setModel(model1);
            }
        }
    }
    
    public String getAsiento(){
        if(getVentana(multiplex).getTipo().getSelectedItem().equals("General ("+general+" disponibles)")){
            return "General";
        }
        else if(getVentana(multiplex).getTipo().getSelectedItem().equals("Preferencial ("+preferencial+" disponibles)")){
            return "Preferencial";
        }
        return null;
    }
    
    public int getFuncion(){
        BuscarFuncion b = new BuscarFuncion();
        ResultSet rs = b.Buscar(multiplex,getVentana(multiplex).getNombrePelicula().getText(),(String)getVentana(multiplex).getFecha().getSelectedItem(),(String)getVentana(multiplex).getHora().getSelectedItem());
        int funcion=0;
        try{
            while(rs.next()){
                funcion=rs.getInt(1);
            }
        }
        catch(SQLException ex){
            
        }
        return funcion;
    }
}
