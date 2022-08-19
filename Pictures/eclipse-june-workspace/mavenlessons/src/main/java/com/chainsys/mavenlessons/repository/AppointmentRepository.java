package com.chainsys.mavenlessons.repository;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.mavenlessons.entity.Appointment;
public interface AppointmentRepository extends CrudRepository<Appointment, Integer>{

    Appointment findById(int id);
    List<Appointment> findAllByDoctorId(int drId);
    List<Appointment> findAll();
    Appointment save(Appointment apt);
    void deleteById(int id);
   
    
   // @Query(value = "select a from Appointment a where a.id=?1")
    // jpql = Java persistent query language
    // Here is an instance of Appointment 
       
}
