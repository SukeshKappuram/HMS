/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hms.dao;

import com.hms.db.DataSouce;
import com.hms.model.Appointment;
import com.hms.model.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author iamsu
 */
public class AppointmentDAOImpl implements AppointmentDAO{

    DataSouce ds= new DataSouce();
    
    @Override
    public void createAppointment() {
        
    }

    @Override
    public int deleteAppointment() {
        int deleted=0;
        return 0;
    }

    @Override
    public List<Appointment> getAppointments(User user) throws SQLException,ClassNotFoundException {
        List<Appointment> appointments =new ArrayList<>();
        ds.createConnection();
        UserDAOImpl ud=new UserDAOImpl();
        ResultSet rs=ds.getSt().executeQuery("select * from Appointments where "+user.getRole()+"Id = "+user.getId()+" ");
        while(rs.next()){
            appointments.add(new Appointment(rs.getDate("appointmentdate"),ud.getPatient(rs.getInt("patientId")), ud.getDoctor(rs.getInt("doctorId")), rs.getString("problem")));
        }
        ds.closeConnection();
        return appointments;
    }
    
}
