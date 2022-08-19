package com.chainsys.springmvc.pojo;
	import java.util.Date;

	import javax.persistence.Entity;
	import javax.persistence.Id;
	import javax.persistence.Table;

	@Entity
	@Table(name="Appointment")
	public class Appointment {
	@Id
	private int app_id;
	private Date app_date;
	public int getApp_id() {
	    return app_id;
	}
	public void setApp_id(int appoint_id) {
	    this.app_id = appoint_id;
	}
	public Date getApp_date() {
	    return app_date;
	}
	public void setApp_date(Date appoint_date) {
	    this.app_date = appoint_date;
	}
	public int getDoctor_Id() {
	    return doctor_id;
	}
	public void setDoctor_Id(int id) {
	    this.doctor_id = id;
	}
	public String getPatient_name() {
	    return patient_name;
	}
	public void setPatient_name(String patient_name) {
	    this.patient_name = patient_name;
	}
	public long getFees_collected() {
	    return fees_collected;
	}
	public void setFees_collected(long fees_collected) {
	    this.fees_collected = fees_collected;
	}
	private int doctor_id;
	private String patient_name;
	private long fees_collected;
	}
	
