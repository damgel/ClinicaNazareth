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
 * @author Angel
 */
public class btempleado extends cConexion {

    static private PreparedStatement pst = null;

    public static ResultSet gettEmpleado() {
        ResultSet rs = null;
        try {
            String sql = "select * from tipo_empleado";
            pst = conectar_ds().prepareStatement(sql);
            rs = pst.executeQuery();
        } catch (Exception e) {
            System.out.print(e.getMessage());
        }
        return rs;
    }
}
