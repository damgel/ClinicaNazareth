/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BEANS;

/**
 *
 * @author Angel
 */
public class beanCita {

    public static String validar = "select count(idCita) as idCita from cita where fechaCita=? and fkhorario=(select h.idhorario from horario  as h where h.horaini=? and h.fkempleado=(select e.idEmpleado from empleado as e inner join persona as p on p.idPersona=e.fkpersona where p.pApellPer =?) ) ";
    public static String Actlizar = "update cita set fechaCita=? , fkhorario=(select h.idhorario from horario  as h where h.horaini=? and h.fkempleado=(select e.idEmpleado from empleado as e inner join persona as p on p.idPersona=e.fkpersona where p.pApellPer =?) ) where idCita=?";
    public static String Ccita = "insert into cita (fechaCita,correoCita,fkhorario,motivo,fkPaciente) values(?,?,(select h.idhorario from horario  as h where h.horaini=? and h.fkempleado=(select e.idEmpleado from empleado as e inner join persona as p on p.idPersona=e.fkpersona where p.pApellPer =?)),?,? )";
    public static String confirmado = "UPDATE Cita estadoCita=? where idcita=?";
    public static String Consulta = "UPDATE Cita set estadoCita=? where idcita=?";
    public static String cancelado = "UPDATE Cita estadoCita=? where idcita=?";
}
