package com.chainsys.mavenlessons.entity;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "Appointment")
public class Appointment {
	@Id
	@Column(name = "APPOINT_ID")
	private int id;
	
	@Column(name = "APPOINT_DATE")
	private Date appointDate;
	
//	@Column(name = "ID")
//	private String docId;
	
	@Column(name="PATIENT_NAME")
	private String patientName;
	
	@Column(name = "FEES_COLLECTED")
	private float fee;
	
	//Joincolumn maps the column(ID) of the current entity
	//appointment with the primaryKay column(Id) of the  assoiciated entity Doctor
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ID" , nullable = false,
	insertable = false ,updatable = false)
	@JsonIgnore
	private Doctor doctor;
	
	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	
	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getAppointDate() {
		return appointDate;
	}

	public void setAppointDate(Date appointDate) {
		this.appointDate = appointDate;
	}

//	public String getDocId() {
//		return docId;
//	}
//
//	public void setDocId(String docId) {
//		this.docId = docId;
//	}
	public float getFee() {
		return fee;
	}

	public void setFee(float fee) {
		this.fee = fee;
	}
	
	@Override
	public String toString() {
		return String.format("%d, %s, %s, %.2f",id, 
				appointDate, patientName, fee );
	}
	

}