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
public class BuscarFuncionRecibo {
    public ResultSet buscar(int funcion){
        Statement st;
        ResultSet rs=null;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("select numsala,multiplex.nombre,fecha,hora,pelicula.nombre from funcion,multiplex,fechas,horario,pelicula where pelicula_idpelicula=idpelicula and multiplex_idmultiplex=idmultiplex and horario_idhorario=idhorario and fechas_idfecha=idfecha and idfuncion = "+funcion);
        } catch (SQLException ex) {
            
        }
         return rs; 
    }
}
