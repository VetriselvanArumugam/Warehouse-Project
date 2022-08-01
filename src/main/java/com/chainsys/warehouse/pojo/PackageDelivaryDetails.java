package com.chainsys.warehouse.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="PackageDelivaryDetails")
public class PackageDelivaryDetails {
	@Id
	@Column(name ="delivery_number")
	private long deliveryNumber ;
	@Column(name ="delivery_date")
	private Date deliveryDate;
	@Column(name ="unit_id")
	private int unitId;
	@Column(name ="package_id")
	private int packageId;
	@Column(name ="delivered_person")
	private String deliveredPerson;
	@Column(name ="delivered_aadhaar_number")
	private long deliveredAadhaarNumber;
	@Column(name ="delivered_phone_number")
	private long deliveredPhoneNumber;
	@Column(name ="delivered_city")
	private String deliveredCity;
	@Column(name ="delivered_pincode")
	private long deliveredPincode;
	public long getDeliveryNumber() {
		return deliveryNumber;
	}
	public void setDeliveryNumber(long deliveryNumber) {
		this.deliveryNumber = deliveryNumber;
	}
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public int getUnitId() {
		return unitId;
	}
	public void setUnitId(int unitId) {
		this.unitId = unitId;
	}
	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	public String getDeliveredPerson() {
		return deliveredPerson;
	}
	public void setDeliveredPerson(String deliveredPerson) {
		this.deliveredPerson = deliveredPerson;
	}
	public long getDeliveredAadhaarNumber() {
		return deliveredAadhaarNumber;
	}
	public void setDeliveredAadhaarNumber(long deliveredAadhaarNumber) {
		this.deliveredAadhaarNumber = deliveredAadhaarNumber;
	}
	public long getDeliveredPhoneNumber() {
		return deliveredPhoneNumber;
	}
	public void setDeliveredPhoneNumber(long deliveredPhoneNumber) {
		this.deliveredPhoneNumber = deliveredPhoneNumber;
	}
	public String getDeliveredCity() {
		return deliveredCity;
	}
	public void setDeliveredCity(String deliveredCity) {
		this.deliveredCity = deliveredCity;
	}
	public long getDeliveredPincode() {
		return deliveredPincode;
	}
	public void setDeliveredPincode(long deliveredPincode) {
		this.deliveredPincode = deliveredPincode;
	}
	
}
