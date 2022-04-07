/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package presentacion.vistas;

import presentacion.modelos.Modelo_Asiento;
import presentacion.modelos.Modelo_ReciboBoletas;
import presentacion.contraladores.Controlador_Asientos;
import java.util.ArrayList;
import javax.swing.JButton;

/**
 *
 * @author jhosd
 */
public class Seleccion_Asientos extends javax.swing.JFrame {
   
    private Seleccion_Asientos ventana;
    
    private final Modelo_Asiento modelo;
    private Controlador_Asientos control;
    public Seleccion_Asientos(Modelo_Asiento modelo,String a) {
        this.modelo = modelo;
        initComponents();
        capturarEventos();
        if(a == "General"){
            jButtonE1.setEnabled(false);
            jButtonE2.setEnabled(false);
            jButtonE3.setEnabled(false);
            jButtonE4.setEnabled(false);
            jButtonE5.setEnabled(false);
            jButtonE6.setEnabled(false);
            jButtonE7.setEnabled(false);
            jButtonE8.setEnabled(false);
            jButtonE9.setEnabled(false);
            jButtonE10.setEnabled(false);
            jButtonF1.setEnabled(false);
            jButtonF2.setEnabled(false);
            jButtonF3.setEnabled(false);
            jButtonF4.setEnabled(false);
            jButtonF5.setEnabled(false);
            jButtonF6.setEnabled(false);
            jButtonF7.setEnabled(false);
            jButtonF8.setEnabled(false);
            jButtonF9.setEnabled(false);
            jButtonF10.setEnabled(false);
        }
        else{
            jButtonA1.setEnabled(false);
            jButtonA2.setEnabled(false);
            jButtonA3.setEnabled(false);
            jButtonA4.setEnabled(false);
            jButtonA5.setEnabled(false);
            jButtonA6.setEnabled(false);
            jButtonA7.setEnabled(false);
            jButtonA8.setEnabled(false);
            jButtonA9.setEnabled(false);
            jButtonA10.setEnabled(false);
            jButtonB1.setEnabled(false);
            jButtonB2.setEnabled(false);
            jButtonB3.setEnabled(false);
            jButtonB4.setEnabled(false);
            jButtonB5.setEnabled(false);
            jButtonB6.setEnabled(false);
            jButtonB7.setEnabled(false);
            jButtonB8.setEnabled(false);
            jButtonB9.setEnabled(false);
            jButtonB10.setEnabled(false);
            jButtonC1.setEnabled(false);
            jButtonC2.setEnabled(false);
            jButtonC3.setEnabled(false);
            jButtonC4.setEnabled(false);
            jButtonC5.setEnabled(false);
            jButtonC6.setEnabled(false);
            jButtonC7.setEnabled(false);
            jButtonC8.setEnabled(false);
            jButtonC9.setEnabled(false);
            jButtonC10.setEnabled(false);
            jButtonD1.setEnabled(false);
            jButtonD2.setEnabled(false);
            jButtonD3.setEnabled(false);
            jButtonD4.setEnabled(false);
            jButtonD5.setEnabled(false);
            jButtonD6.setEnabled(false);
            jButtonD7.setEnabled(false);
            jButtonD8.setEnabled(false);
            jButtonD9.setEnabled(false);
            jButtonD10.setEnabled(false);
        }
        
    }
    
    public void capturarEventos(){
            jButtonE1.addActionListener(getControl());
            jButtonE2.addActionListener(getControl());
            jButtonE3.addActionListener(getControl());
            jButtonE4.addActionListener(getControl());
            jButtonE5.addActionListener(getControl());
            jButtonE6.addActionListener(getControl());
            jButtonE7.addActionListener(getControl());
            jButtonE8.addActionListener(getControl());
            jButtonE9.addActionListener(getControl());
            jButtonE10.addActionListener(getControl());
            jButtonF1.addActionListener(getControl());
            jButtonF2.addActionListener(getControl());
            jButtonF3.addActionListener(getControl());
            jButtonF4.addActionListener(getControl());
            jButtonF5.addActionListener(getControl());
            jButtonF6.addActionListener(getControl());
            jButtonF7.addActionListener(getControl());
            jButtonF8.addActionListener(getControl());
            jButtonF9.addActionListener(getControl());
            jButtonF10.addActionListener(getControl());
            jButtonA1.addActionListener(getControl());
            jButtonA2.addActionListener(getControl());
            jButtonA3.addActionListener(getControl());
            jButtonA4.addActionListener(getControl());
            jButtonA5.addActionListener(getControl());
            jButtonA6.addActionListener(getControl());
            jButtonA7.addActionListener(getControl());
            jButtonA8.addActionListener(getControl());
            jButtonA9.addActionListener(getControl());
            jButtonA10.addActionListener(getControl());
            jButtonB1.addActionListener(getControl());
            jButtonB2.addActionListener(getControl());
            jButtonB3.addActionListener(getControl());
            jButtonB4.addActionListener(getControl());
            jButtonB5.addActionListener(getControl());
            jButtonB6.addActionListener(getControl());
            jButtonB7.addActionListener(getControl());
            jButtonB8.addActionListener(getControl());
            jButtonB9.addActionListener(getControl());
            jButtonB10.addActionListener(getControl());
            jButtonC1.addActionListener(getControl());
            jButtonC2.addActionListener(getControl());
            jButtonC3.addActionListener(getControl());
            jButtonC4.addActionListener(getControl());
            jButtonC5.addActionListener(getControl());
            jButtonC6.addActionListener(getControl());
            jButtonC7.addActionListener(getControl());
            jButtonC8.addActionListener(getControl());
            jButtonC9.addActionListener(getControl());
            jButtonC10.addActionListener(getControl());
            jButtonD1.addActionListener(getControl());
            jButtonD2.addActionListener(getControl());
            jButtonD3.addActionListener(getControl());
            jButtonD4.addActionListener(getControl());
            jButtonD5.addActionListener(getControl());
            jButtonD6.addActionListener(getControl());
            jButtonD7.addActionListener(getControl());
            jButtonD8.addActionListener(getControl());
            jButtonD9.addActionListener(getControl());
            jButtonD10.addActionListener(getControl());
            jButton1.addActionListener(getControl());
    }
    
    public Controlador_Asientos getControl() {
        if(control == null){
            control = new Controlador_Asientos(this);
        }
        return control;
    }
    
    public Modelo_Asiento getModelo() {
        return modelo;
    }
    
    public JButton confirmar() {
        return jButton1;
    }
    
    public void mostrarRecibo(int funcion,ArrayList s,String tipo,int cantidad){
        this.setVisible(false);
        Modelo_ReciboBoletas m;
        m = new Modelo_ReciboBoletas();
        m.iniciar(funcion,s,tipo,cantidad);
    }
    
    public JButton getJbutton(String s){
        switch (s) {
            case "A1":
                return jButtonA1;
            case "A2":
                return jButtonA2;
            case "A3":
                return jButtonA3;
            case "A4":
                return jButtonA4;
            case "A5":
                return jButtonA5;
            case "A6":
                return jButtonA6;
            case "A7":
                return jButtonA7;
            case "A8":
                return jButtonA8;
            case "A9":
                return jButtonA9;
            case "A10":
                return jButtonA10;
            case "B1":
                return jButtonB1;
            case "B2":
                return jButtonB2;
            case "B3":
                return jButtonB3;
            case "B4":
                return jButtonB4;
            case "B5":
                return jButtonB5;
            case "B6":
                return jButtonB6;
            case "B7":
                return jButtonB7;
            case "B8":
                return jButtonB8;
            case "B9":
                return jButtonB9;
            case "B10":
                return jButtonB10;
            case "C1":
                return jButtonC1;
            case "C2":
                return jButtonC2;
            case "C3":
                return jButtonC3;
            case "C4":
                return jButtonC4;
            case "C5":
                return jButtonC5;
            case "C6":
                return jButtonC6;
            case "C7":
                return jButtonC7;
            case "C8":
                return jButtonC8;
            case "C9":
                return jButtonC9;
            case "C10":
                return jButtonC10;
            case "D1":
                return jButtonD1;
            case "D2":
                return jButtonD2;
            case "D3":
                return jButtonD3;
            case "D4":
                return jButtonD4;
            case "D5":
                return jButtonD5;
            case "D6":
                return jButtonD6;
            case "D7":
                return jButtonD7;
            case "D8":
                return jButtonD8;
            case "D9":
                return jButtonD9;
            case "D10":
                return jButtonD10;
            case "E1":
                return jButtonE1;
            case "E2":
                return jButtonE2;
            case "E3":
                return jButtonE3;
            case "E4":
                return jButtonE4;
            case "E5":
                return jButtonE5;
            case "E6":
                return jButtonE6;
            case "E7":
                return jButtonE7;
            case "E8":
                return jButtonE8;
            case "E9":
                return jButtonE9;
            case "E10":
                return jButtonE10;
            case "F1":
                return jButtonF1;
            case "F2":
                return jButtonF2;
            case "F3":
                return jButtonF3;
            case "F4":
                return jButtonF4;
            case "F5":
                return jButtonF5;
            case "F6":
                return jButtonF6;
            case "F7":
                return jButtonF7;
            case "F8":
                return jButtonF8;
            case "F9":
                return jButtonF9;
            case "F10":
                return jButtonF10;
            default:
                return null;
        }
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
  //  @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButtonA1 = new javax.swing.JButton();
        jButtonA2 = new javax.swing.JButton();
        jButtonA3 = new javax.swing.JButton();
        jButtonA4 = new javax.swing.JButton();
        jButtonA5 = new javax.swing.JButton();
        jButtonA6 = new javax.swing.JButton();
        jButtonA7 = new javax.swing.JButton();
        jButtonA8 = new javax.swing.JButton();
        jButtonA9 = new javax.swing.JButton();
        jButtonA10 = new javax.swing.JButton();
        jButtonB6 = new javax.swing.JButton();
        jButtonB7 = new javax.swing.JButton();
        jButtonB8 = new javax.swing.JButton();
        jButtonB9 = new javax.swing.JButton();
        jButtonB10 = new javax.swing.JButton();
        jButtonB1 = new javax.swing.JButton();
        jButtonB2 = new javax.swing.JButton();
        jButtonB3 = new javax.swing.JButton();
        jButtonB4 = new javax.swing.JButton();
        jButtonB5 = new javax.swing.JButton();
        jButtonC1 = new javax.swing.JButton();
        jButtonC2 = new javax.swing.JButton();
        jButtonC3 = new javax.swing.JButton();
        jButtonC4 = new javax.swing.JButton();
        jButtonC5 = new javax.swing.JButton();
        jButtonC6 = new javax.swing.JButton();
        jButtonC7 = new javax.swing.JButton();
        jButtonC8 = new javax.swing.JButton();
        jButtonC9 = new javax.swing.JButton();
        jButtonC10 = new javax.swing.JButton();
        jButtonD9 = new javax.swing.JButton();
        jButtonD6 = new javax.swing.JButton();
        jButtonD8 = new javax.swing.JButton();
        jButtonD7 = new javax.swing.JButton();
        jButtonD5 = new javax.swing.JButton();
        jButtonD3 = new javax.swing.JButton();
        jButtonD1 = new javax.swing.JButton();
        jButtonD4 = new javax.swing.JButton();
        jButtonD2 = new javax.swing.JButton();
        jButtonD10 = new javax.swing.JButton();
        jButtonE8 = new javax.swing.JButton();
        jButtonE9 = new javax.swing.JButton();
        jButtonE4 = new javax.swing.JButton();
        jButtonE3 = new javax.swing.JButton();
        jButtonE1 = new javax.swing.JButton();
        jButtonE5 = new javax.swing.JButton();
        jButtonE10 = new javax.swing.JButton();
        jButtonE6 = new javax.swing.JButton();
        jButtonE7 = new javax.swing.JButton();
        jButtonE2 = new javax.swing.JButton();
        jButtonF8 = new javax.swing.JButton();
        jButtonF9 = new javax.swing.JButton();
        jButtonF4 = new javax.swing.JButton();
        jButtonF3 = new javax.swing.JButton();
        jButtonF1 = new javax.swing.JButton();
        jButtonF5 = new javax.swing.JButton();
        jButtonF10 = new javax.swing.JButton();
        jButtonF6 = new javax.swing.JButton();
        jButtonF7 = new javax.swing.JButton();
        jButtonF2 = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jButtonA1.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonA1.setText("A1");
        jButtonA1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonA1ActionPerformed(evt);
            }
        });

        jButtonA2.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonA2.setText("A2");
        jButtonA2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonA2ActionPerformed(evt);
            }
        });

        jButtonA3.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonA3.setText("A3");
        jButtonA3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonA3ActionPerformed(evt);
            }
        });

        jButtonA4.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonA4.setText("A4");
        jButtonA4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonA4ActionPerformed(evt);
            }
        });

        jButtonA5.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonA5.setText("A5");
        jButtonA5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonA5ActionPerformed(evt);
            }
        });

        jButtonA6.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonA6.setText("A6");
        jButtonA6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonA6ActionPerformed(evt);
            }
        });

        jButtonA7.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonA7.setText("A7");
        jButtonA7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonA7ActionPerformed(evt);
            }
        });

        jButtonA8.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonA8.setText("A8");
        jButtonA8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonA8ActionPerformed(evt);
            }
        });

        jButtonA9.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonA9.setText("A9");
        jButtonA9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonA9ActionPerformed(evt);
            }
        });

        jButtonA10.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonA10.setText("A10");
        jButtonA10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonA10ActionPerformed(evt);
            }
        });

        jButtonB6.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonB6.setText("B6");
        jButtonB6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonB6ActionPerformed(evt);
            }
        });

        jButtonB7.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonB7.setText("B7");
        jButtonB7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonB7ActionPerformed(evt);
            }
        });

        jButtonB8.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonB8.setText("B8");
        jButtonB8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonB8ActionPerformed(evt);
            }
        });

        jButtonB9.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonB9.setText("B9");
        jButtonB9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonB9ActionPerformed(evt);
            }
        });

        jButtonB10.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonB10.setText("B10");
        jButtonB10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonB10ActionPerformed(evt);
            }
        });

        jButtonB1.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonB1.setText("B1");
        jButtonB1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonB1ActionPerformed(evt);
            }
        });

        jButtonB2.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonB2.setText("B2");
        jButtonB2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonB2ActionPerformed(evt);
            }
        });

        jButtonB3.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonB3.setText("B3");
        jButtonB3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonB3ActionPerformed(evt);
            }
        });

        jButtonB4.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonB4.setText("B4");
        jButtonB4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonB4ActionPerformed(evt);
            }
        });

        jButtonB5.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonB5.setText("B5");
        jButtonB5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonB5ActionPerformed(evt);
            }
        });

        jButtonC1.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonC1.setText("C1");
        jButtonC1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonC1ActionPerformed(evt);
            }
        });

        jButtonC2.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonC2.setText("C2");
        jButtonC2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonC2ActionPerformed(evt);
            }
        });

        jButtonC3.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonC3.setText("C3");
        jButtonC3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonC3ActionPerformed(evt);
            }
        });

        jButtonC4.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonC4.setText("C4");
        jButtonC4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonC4ActionPerformed(evt);
            }
        });

        jButtonC5.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonC5.setText("C5");
        jButtonC5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonC5ActionPerformed(evt);
            }
        });

        jButtonC6.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonC6.setText("C6");
        jButtonC6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonC6ActionPerformed(evt);
            }
        });

        jButtonC7.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonC7.setText("C7");
        jButtonC7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonC7ActionPerformed(evt);
            }
        });

        jButtonC8.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonC8.setText("C8");
        jButtonC8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonC8ActionPerformed(evt);
            }
        });

        jButtonC9.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonC9.setText("C9");
        jButtonC9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonC9ActionPerformed(evt);
            }
        });

        jButtonC10.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonC10.setText("C10");
        jButtonC10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonC10ActionPerformed(evt);
            }
        });

        jButtonD9.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonD9.setText("D9");
        jButtonD9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonD9ActionPerformed(evt);
            }
        });

        jButtonD6.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonD6.setText("D6");
        jButtonD6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonD6ActionPerformed(evt);
            }
        });

        jButtonD8.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonD8.setText("D8");
        jButtonD8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonD8ActionPerformed(evt);
            }
        });

        jButtonD7.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonD7.setText("D7");
        jButtonD7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonD7ActionPerformed(evt);
            }
        });

        jButtonD5.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonD5.setText("D5");
        jButtonD5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonD5ActionPerformed(evt);
            }
        });

        jButtonD3.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonD3.setText("D3");
        jButtonD3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonD3ActionPerformed(evt);
            }
        });

        jButtonD1.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonD1.setText("D1");
        jButtonD1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonD1ActionPerformed(evt);
            }
        });

        jButtonD4.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonD4.setText("D4");
        jButtonD4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonD4ActionPerformed(evt);
            }
        });

        jButtonD2.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonD2.setText("D2");
        jButtonD2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonD2ActionPerformed(evt);
            }
        });

        jButtonD10.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonD10.setText("D10");
        jButtonD10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonD10ActionPerformed(evt);
            }
        });

        jButtonE8.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonE8.setText("E8");
        jButtonE8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonE8ActionPerformed(evt);
            }
        });

        jButtonE9.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonE9.setText("E9");
        jButtonE9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonE9ActionPerformed(evt);
            }
        });

        jButtonE4.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonE4.setText("E4");
        jButtonE4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonE4ActionPerformed(evt);
            }
        });

        jButtonE3.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonE3.setText("E3");
        jButtonE3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonE3ActionPerformed(evt);
            }
        });

        jButtonE1.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonE1.setText("E1");
        jButtonE1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonE1ActionPerformed(evt);
            }
        });

        jButtonE5.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonE5.setText("E5");
        jButtonE5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonE5ActionPerformed(evt);
            }
        });

        jButtonE10.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonE10.setText("E10");
        jButtonE10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonE10ActionPerformed(evt);
            }
        });

        jButtonE6.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonE6.setText("E6");
        jButtonE6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonE6ActionPerformed(evt);
            }
        });

        jButtonE7.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonE7.setText("E7");
        jButtonE7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonE7ActionPerformed(evt);
            }
        });

        jButtonE2.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonE2.setText("E2");
        jButtonE2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonE2ActionPerformed(evt);
            }
        });

        jButtonF8.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonF8.setText("F8");
        jButtonF8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonF8ActionPerformed(evt);
            }
        });

        jButtonF9.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonF9.setText("F9");
        jButtonF9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonF9ActionPerformed(evt);
            }
        });

        jButtonF4.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonF4.setText("F4");
        jButtonF4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonF4ActionPerformed(evt);
            }
        });

        jButtonF3.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonF3.setText("F3");
        jButtonF3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonF3ActionPerformed(evt);
            }
        });

        jButtonF1.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonF1.setText("F1");
        jButtonF1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonF1ActionPerformed(evt);
            }
        });

        jButtonF5.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonF5.setText("F5");
        jButtonF5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonF5ActionPerformed(evt);
            }
        });

        jButtonF10.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonF10.setText("F10");
        jButtonF10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonF10ActionPerformed(evt);
            }
        });

        jButtonF6.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonF6.setText("F6");
        jButtonF6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonF6ActionPerformed(evt);
            }
        });

        jButtonF7.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonF7.setText("F7");
        jButtonF7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonF7ActionPerformed(evt);
            }
        });

        jButtonF2.setFont(new java.awt.Font("Corbel", 1, 11)); // NOI18N
        jButtonF2.setText("F2");
        jButtonF2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonF2ActionPerformed(evt);
            }
        });

        jButton1.setFont(new java.awt.Font("Corbel", 1, 14)); // NOI18N
        jButton1.setText("Confirmar");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Corbel", 1, 24)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Asientos");

        jLabel2.setFont(new java.awt.Font("Corbel", 1, 14)); // NOI18N
        jLabel2.setText("General");

        jLabel3.setFont(new java.awt.Font("Corbel", 1, 14)); // NOI18N
        jLabel3.setText("Preferencial");

        jPanel1.setBackground(new java.awt.Color(0, 0, 0));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 496, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 9, Short.MAX_VALUE)
        );

        jLabel4.setFont(new java.awt.Font("Corbel", 1, 14)); // NOI18N
        jLabel4.setText("Pantalla");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(308, 308, 308)
                        .addComponent(jLabel3))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(23, 23, 23)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 126, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                    .addComponent(jButtonB1, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonB2, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonB3, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonB4, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonB5, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonB6, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonB7, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonB8, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonB9, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonB10, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(jButtonC1, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonC2, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonC3, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonC4, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonC5, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonC6, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonC7, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonC8, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonC9, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonC10, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(jButtonD1, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonD2, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonD3, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonD4, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonD5, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonD6, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonD7, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonD8, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonD9, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonD10, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(jButtonE1, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonE2, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonE3, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonE4, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonE5, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonE6, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonE7, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonE8, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonE9, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonE10, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(jButtonF1, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonF2, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonF3, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonF4, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonF5, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonF6, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonF7, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonF8, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonF9, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(jButtonF10, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(jButtonA1, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(layout.createSequentialGroup()
                                            .addComponent(jButtonA2, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(jButtonA3, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(jButtonA4, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(jButtonA5, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(jButtonA6, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(jButtonA7, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(jButtonA8, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(jButtonA9, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(jButtonA10, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(304, 304, 304)
                        .addComponent(jLabel1))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(318, 318, 318)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel4)
                            .addComponent(jLabel2))))
                .addContainerGap(23, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel4)
                .addGap(38, 38, 38)
                .addComponent(jLabel2)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jButtonA6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonA7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonA8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonA9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonA10, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jButtonA1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonA2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonA3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonA4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonA5, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jButtonB6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonB7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonB8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonB9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonB10, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jButtonB1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonB2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonB3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonB4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonB5, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jButtonC6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonC7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonC8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonC9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonC10, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jButtonC1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonC2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonC3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonC4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonC5, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jButtonD6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonD7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonD8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonD9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonD10, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jButtonD1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonD2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonD3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonD4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonD5, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addComponent(jLabel3)
                .addGap(11, 11, 11)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jButtonE6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonE7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonE8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonE9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonE10, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jButtonE1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonE2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonE3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonE4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonE5, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jButtonF6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonF7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonF8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonF9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonF10, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jButtonF1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonF2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonF3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonF4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButtonF5, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(36, 36, 36)
                .addComponent(jButton1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButtonA6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonA6ActionPerformed
       //seleccion(jButtonA6,"A6");
    }//GEN-LAST:event_jButtonA6ActionPerformed

    private void jButtonB6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonB6ActionPerformed
        //seleccion(jButtonB6,"B6");
    }//GEN-LAST:event_jButtonB6ActionPerformed

    private void jButtonC6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonC6ActionPerformed
        //seleccion(jButtonC6,"C6");
    }//GEN-LAST:event_jButtonC6ActionPerformed

    private void jButtonD6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonD6ActionPerformed
        //seleccion(jButtonD6,"D6");
    }//GEN-LAST:event_jButtonD6ActionPerformed

    private void jButtonE6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonE6ActionPerformed
       //seleccion(jButtonE6,"E6");
    }//GEN-LAST:event_jButtonE6ActionPerformed

    private void jButtonF6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonF6ActionPerformed
        //seleccion(jButtonF6,"F6");
    }//GEN-LAST:event_jButtonF6ActionPerformed

    private void jButtonB3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonB3ActionPerformed
        //seleccion(jButtonB3,"B3");
    }//GEN-LAST:event_jButtonB3ActionPerformed

    private void jButtonB4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonB4ActionPerformed
        //seleccion(jButtonB4,"B4");
    }//GEN-LAST:event_jButtonB4ActionPerformed

    private void jButtonA10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonA10ActionPerformed
        //seleccion(jButtonA10,"A10");
    }//GEN-LAST:event_jButtonA10ActionPerformed

    private void jButtonB1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonB1ActionPerformed
        //seleccion(jButtonB1,"B1");
    }//GEN-LAST:event_jButtonB1ActionPerformed

    private void jButtonC1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonC1ActionPerformed
        //seleccion(jButtonC1,"C1");
    }//GEN-LAST:event_jButtonC1ActionPerformed

    private void jButtonC4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonC4ActionPerformed
        //seleccion(jButtonC4,"C4");
    }//GEN-LAST:event_jButtonC4ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
   
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButtonA1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonA1ActionPerformed
        //seleccion(jButtonA1,"A1");
    }//GEN-LAST:event_jButtonA1ActionPerformed

    private void jButtonA2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonA2ActionPerformed
        //seleccion(jButtonA2,"A2");
    }//GEN-LAST:event_jButtonA2ActionPerformed

    private void jButtonA3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonA3ActionPerformed
        //seleccion(jButtonA3,"A3");
    }//GEN-LAST:event_jButtonA3ActionPerformed

    private void jButtonA4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonA4ActionPerformed
       //seleccion(jButtonA4,"A4");
    }//GEN-LAST:event_jButtonA4ActionPerformed

    private void jButtonA5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonA5ActionPerformed
        //seleccion(jButtonA5,"A5");
    }//GEN-LAST:event_jButtonA5ActionPerformed

    private void jButtonA7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonA7ActionPerformed
        //seleccion(jButtonA7,"A7");
    }//GEN-LAST:event_jButtonA7ActionPerformed

    private void jButtonA8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonA8ActionPerformed
        //seleccion(jButtonA8,"A8");
    }//GEN-LAST:event_jButtonA8ActionPerformed

    private void jButtonA9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonA9ActionPerformed
        //seleccion(jButtonA9,"A9");
    }//GEN-LAST:event_jButtonA9ActionPerformed

    private void jButtonB2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonB2ActionPerformed
        //seleccion(jButtonB2,"B2");
    }//GEN-LAST:event_jButtonB2ActionPerformed

    private void jButtonB5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonB5ActionPerformed
        //seleccion(jButtonB5,"B5");
    }//GEN-LAST:event_jButtonB5ActionPerformed

    private void jButtonB7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonB7ActionPerformed
        //seleccion(jButtonB7,"B7");
    }//GEN-LAST:event_jButtonB7ActionPerformed

    private void jButtonB8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonB8ActionPerformed
        //seleccion(jButtonB8,"B8");
    }//GEN-LAST:event_jButtonB8ActionPerformed

    private void jButtonB9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonB9ActionPerformed
        //seleccion(jButtonB9,"B9");
    }//GEN-LAST:event_jButtonB9ActionPerformed

    private void jButtonB10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonB10ActionPerformed
        //seleccion(jButtonB10,"B10");
    }//GEN-LAST:event_jButtonB10ActionPerformed

    private void jButtonC2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonC2ActionPerformed
        //seleccion(jButtonC2,"C2");
    }//GEN-LAST:event_jButtonC2ActionPerformed

    private void jButtonC3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonC3ActionPerformed
        //seleccion(jButtonC3,"C3");
    }//GEN-LAST:event_jButtonC3ActionPerformed

    private void jButtonC5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonC5ActionPerformed
        //seleccion(jButtonC5,"C5");
    }//GEN-LAST:event_jButtonC5ActionPerformed

    private void jButtonC7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonC7ActionPerformed
        //seleccion(jButtonC7,"C7");
    }//GEN-LAST:event_jButtonC7ActionPerformed

    private void jButtonC8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonC8ActionPerformed
        //seleccion(jButtonC8,"C8");
    }//GEN-LAST:event_jButtonC8ActionPerformed

    private void jButtonC9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonC9ActionPerformed
        //seleccion(jButtonC9,"C9");
    }//GEN-LAST:event_jButtonC9ActionPerformed

    private void jButtonC10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonC10ActionPerformed
        //seleccion(jButtonC10,"C10");
    }//GEN-LAST:event_jButtonC10ActionPerformed

    private void jButtonD1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonD1ActionPerformed
        //seleccion(jButtonD1,"D1");
    }//GEN-LAST:event_jButtonD1ActionPerformed

    private void jButtonD2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonD2ActionPerformed
        //seleccion(jButtonD2,"D2");
    }//GEN-LAST:event_jButtonD2ActionPerformed

    private void jButtonD3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonD3ActionPerformed
        //seleccion(jButtonD3,"D3");
    }//GEN-LAST:event_jButtonD3ActionPerformed

    private void jButtonD4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonD4ActionPerformed
        //seleccion(jButtonD4,"D4");
    }//GEN-LAST:event_jButtonD4ActionPerformed

    private void jButtonD5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonD5ActionPerformed
        //seleccion(jButtonD5,"D5");
    }//GEN-LAST:event_jButtonD5ActionPerformed

    private void jButtonD7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonD7ActionPerformed
        //seleccion(jButtonD7,"D7");
    }//GEN-LAST:event_jButtonD7ActionPerformed

    private void jButtonD8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonD8ActionPerformed
       //seleccion(jButtonD8,"D8");
    }//GEN-LAST:event_jButtonD8ActionPerformed

    private void jButtonD9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonD9ActionPerformed
        //seleccion(jButtonD9,"D9");
    }//GEN-LAST:event_jButtonD9ActionPerformed

    private void jButtonD10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonD10ActionPerformed
       //seleccion(jButtonD10,"D10");
    }//GEN-LAST:event_jButtonD10ActionPerformed

    private void jButtonE1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonE1ActionPerformed
        //seleccion(jButtonE1,"E1");
    }//GEN-LAST:event_jButtonE1ActionPerformed

    private void jButtonE2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonE2ActionPerformed
        //seleccion(jButtonE2,"E2");
    }//GEN-LAST:event_jButtonE2ActionPerformed

    private void jButtonE3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonE3ActionPerformed
        //seleccion(jButtonE3,"E3");
    }//GEN-LAST:event_jButtonE3ActionPerformed

    private void jButtonE4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonE4ActionPerformed
        //seleccion(jButtonE4,"E4");
    }//GEN-LAST:event_jButtonE4ActionPerformed

    private void jButtonE5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonE5ActionPerformed
        //seleccion(jButtonE5,"E5");
    }//GEN-LAST:event_jButtonE5ActionPerformed

    private void jButtonE7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonE7ActionPerformed
        //seleccion(jButtonE7,"E7");
    }//GEN-LAST:event_jButtonE7ActionPerformed

    private void jButtonE8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonE8ActionPerformed
        //seleccion(jButtonE8,"E8");
    }//GEN-LAST:event_jButtonE8ActionPerformed

    private void jButtonE9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonE9ActionPerformed
        //seleccion(jButtonE9,"E9");
    }//GEN-LAST:event_jButtonE9ActionPerformed

    private void jButtonE10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonE10ActionPerformed
        //seleccion(jButtonE10,"E10");
    }//GEN-LAST:event_jButtonE10ActionPerformed

    private void jButtonF1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonF1ActionPerformed
        //seleccion(jButtonF1,"F1");
    }//GEN-LAST:event_jButtonF1ActionPerformed

    private void jButtonF2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonF2ActionPerformed
        //seleccion(jButtonF2,"F2");
    }//GEN-LAST:event_jButtonF2ActionPerformed

    private void jButtonF3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonF3ActionPerformed
        //seleccion(jButtonF3,"F3");
    }//GEN-LAST:event_jButtonF3ActionPerformed

    private void jButtonF4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonF4ActionPerformed
        //seleccion(jButtonF4,"F4");
    }//GEN-LAST:event_jButtonF4ActionPerformed

    private void jButtonF5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonF5ActionPerformed
        //seleccion(jButtonF5,"F5");
    }//GEN-LAST:event_jButtonF5ActionPerformed

    private void jButtonF7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonF7ActionPerformed
        //seleccion(jButtonF7,"F7");
    }//GEN-LAST:event_jButtonF7ActionPerformed

    private void jButtonF8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonF8ActionPerformed
        //seleccion(jButtonF8,"F8");
    }//GEN-LAST:event_jButtonF8ActionPerformed

    private void jButtonF9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonF9ActionPerformed
        //seleccion(jButtonF9,"F9");
    }//GEN-LAST:event_jButtonF9ActionPerformed

    private void jButtonF10ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonF10ActionPerformed
        //seleccion(jButtonF10,"F10");
    }//GEN-LAST:event_jButtonF10ActionPerformed
    
    /**
     * @param args the command line arguments
     */
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButtonA1;
    private javax.swing.JButton jButtonA10;
    private javax.swing.JButton jButtonA2;
    private javax.swing.JButton jButtonA3;
    private javax.swing.JButton jButtonA4;
    private javax.swing.JButton jButtonA5;
    private javax.swing.JButton jButtonA6;
    private javax.swing.JButton jButtonA7;
    private javax.swing.JButton jButtonA8;
    private javax.swing.JButton jButtonA9;
    private javax.swing.JButton jButtonB1;
    private javax.swing.JButton jButtonB10;
    private javax.swing.JButton jButtonB2;
    private javax.swing.JButton jButtonB3;
    private javax.swing.JButton jButtonB4;
    private javax.swing.JButton jButtonB5;
    private javax.swing.JButton jButtonB6;
    private javax.swing.JButton jButtonB7;
    private javax.swing.JButton jButtonB8;
    private javax.swing.JButton jButtonB9;
    private javax.swing.JButton jButtonC1;
    private javax.swing.JButton jButtonC10;
    private javax.swing.JButton jButtonC2;
    private javax.swing.JButton jButtonC3;
    private javax.swing.JButton jButtonC4;
    private javax.swing.JButton jButtonC5;
    private javax.swing.JButton jButtonC6;
    private javax.swing.JButton jButtonC7;
    private javax.swing.JButton jButtonC8;
    private javax.swing.JButton jButtonC9;
    private javax.swing.JButton jButtonD1;
    private javax.swing.JButton jButtonD10;
    private javax.swing.JButton jButtonD2;
    private javax.swing.JButton jButtonD3;
    private javax.swing.JButton jButtonD4;
    private javax.swing.JButton jButtonD5;
    private javax.swing.JButton jButtonD6;
    private javax.swing.JButton jButtonD7;
    private javax.swing.JButton jButtonD8;
    private javax.swing.JButton jButtonD9;
    private javax.swing.JButton jButtonE1;
    private javax.swing.JButton jButtonE10;
    private javax.swing.JButton jButtonE2;
    private javax.swing.JButton jButtonE3;
    private javax.swing.JButton jButtonE4;
    private javax.swing.JButton jButtonE5;
    private javax.swing.JButton jButtonE6;
    private javax.swing.JButton jButtonE7;
    private javax.swing.JButton jButtonE8;
    private javax.swing.JButton jButtonE9;
    private javax.swing.JButton jButtonF1;
    private javax.swing.JButton jButtonF10;
    private javax.swing.JButton jButtonF2;
    private javax.swing.JButton jButtonF3;
    private javax.swing.JButton jButtonF4;
    private javax.swing.JButton jButtonF5;
    private javax.swing.JButton jButtonF6;
    private javax.swing.JButton jButtonF7;
    private javax.swing.JButton jButtonF8;
    private javax.swing.JButton jButtonF9;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
