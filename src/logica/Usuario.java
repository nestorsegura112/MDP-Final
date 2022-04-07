/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

/**
 *
 * @author jhosd
 */
public class Usuario {
    
    private static String user=null;
    
    
    private Usuario(String u){
        user=u;
    }
    
    public static Usuario crearUsuario(String u){
        if(user==null){
            return new Usuario(u);
        }
        return new Usuario(user);
    }
    
    public void desLoggear(){
        user=null;
    }
    
    public String getUser(){
        return user;
    }
    
}
