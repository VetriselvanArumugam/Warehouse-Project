package com.chainsys.springmvc.dao;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.springmvc.pojo.Appointment;
import com.chainsys.springmvc.pojo.Doctor;

public interface AppointmentRepository extends CrudRepository<Appointment,Integer> {
	Appointment findById(int id);
	Appointment save(Doctor dr);
	// Used for both adding new Appointment and Modifying new Doctor
	void deleteById(int dr_id);
	List <Appointment> findAll();
}
