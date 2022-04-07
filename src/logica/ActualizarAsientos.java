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
public class ActualizarAsientos {
    public void actualizar(int funcion,int asiento){
        Usuario u=Usuario.crearUsuario("");
        String cliente = u.getUser();
        Statement st;
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            st.execute("insert into ticket (asiento_idasiento,funcion_idfuncion,cliente_documento) values ("+asiento+","+funcion+","+cliente+")");
        } catch (SQLException ex) {
            
        }
    }
}
