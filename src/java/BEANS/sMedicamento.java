/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BEANS;

import DAL.cConexion;
import static DAL.cConexion.conectar_ds;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Marlon
 */
public class sMedicamento extends cConexion {
        static private  PreparedStatement pst =null;
    public  static ResultSet getMedicamento(){
        
     ResultSet rs=null;
        try{
            
            String sql="select * from medicamento";
        pst=conectar_ds().prepareStatement(sql);
        rs=pst.executeQuery();
        }catch(Exception e){
            System.out.print(e.getMessage());
        }
        return rs;
    
    }
}