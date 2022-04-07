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

/**
 *
 * @author jhosd
 */
public class BuscarPeliculasCliente{
    public ResultSet Buscar(){
        Usuario u=Usuario.crearUsuario("");
        String x=u.getUser();
        Statement st;
        ResultSet rs=null;
        System.out.println(""+x);
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("select nombre, idpelicula from ticket,funcion,pelicula where pelicula_idpelicula = idpelicula and funcion_idfuncion = idfuncion and cliente_documento = "+x+" group by nombre");
        } catch (SQLException ex) {
            
        }
         return rs;   
   }
}
