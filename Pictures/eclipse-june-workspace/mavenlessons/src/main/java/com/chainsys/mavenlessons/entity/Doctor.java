
package com.chainsys.mavenlessons.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "Doctor")
public class Doctor {
	@Id
	@Column(name = "ID")
	private int id;
	@Column(name = "NAME")
	private String docName;
	@Column(name = "DOB")
	private Date docDob;
	@Column(name = "SPECIALITY")
	private String speciality;
	@Column(name = "CITY")
	private String city;
	@Column(name = "PHONE_NO")
	private long phNo;
	@Column(name = "STANDARD_FEES")
	private float fee;
	// Bidirectional Association

	@OneToMany(mappedBy = "doctor", fetch = FetchType.LAZY)
	@JsonIgnore
	private List<Appointment> appointment;
	public List<Appointment> getAppointments() {
		return this.appointment;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	public Date getDocDob() {
		return docDob;
	}

	public void setDocDob(Date docDob) {
		this.docDob = docDob;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public long getPhNo() {
		return phNo;
	}

	public void setPhNo(long phNo) {
		this.phNo = phNo;
	}

	public float getFee() {
		return fee;
	}

	public void setFee(float fee) {
		this.fee = fee;
	}

	public List<Appointment> getAppointment() {
		return appointment;
	}

	public void setAppointment(List<Appointment> appointment) {
		this.appointment = appointment;
	}

	@Override
	public String toString() {
		return String.format(" { %d, %s, %s, %s, %s,%d," + ",%.2f }", id, docName, docDob, speciality, city, phNo,
				fee);
	}
}
