/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import logica.Conexion;

/**
 *
 * @author jhosd
 */
public class BuscarTipoAsiento {
    public ResultSet Buscar(String multiplex,String pelicula,String fecha,String asiento,String hora){
        Statement st;
        ResultSet rs=null;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("select count(*) from asiento,ticket,funcion,multiplex,fechas,horario,pelicula where pelicula_idpelicula=idpelicula and multiplex_idmultiplex=idmultiplex and horario_idhorario=idhorario and fechas_idfecha=idfecha and funcion_idfuncion=idfuncion and asiento_idasiento=idasiento and tipo_asiento='"+asiento+"' and fecha = '"+fecha+"' and pelicula.nombre='"+pelicula+"' and multiplex.nombre='"+multiplex+"' and hora='"+hora+"'");
        } catch (SQLException ex) {
            
        }
         return rs;   
   }
}
