package com.chainsys.warehouse.model;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "package_delivery_details")
public class PackageDeliveryDetails {
	@Id
	@Column(name = "delivery_number")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "pddid")
    @SequenceGenerator(name = "pddid", sequenceName = "pddid",  allocationSize = 10)
	@Min(value=1,message="deliveryNumber is not be required")
	@Max(value=10000,message="deliveryNumber is not be required")
	private int deliveryNumber;
	@Column(name = "delivery_date")
	private Date deliveryDate;
	@Column(name = "unit_id")
	@Min(value=1,message="unitId is not be required")
	@Max(value=100,message="unitId is not be required")
	private int unitId;
	@Column(name = "package_id")
	@Min(value=1,message="packageId is not be required")
	@Max(value=100,message="packageId is not be required")
	private int packageId;
	@Column(name = "delivered_Person")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid Delivered Person")
	private String deliveredPerson;
	@Column(name = "delivered_aadhaar_number")
	@Digits(integer = 12, fraction = 0)
	private long deliveredAadhaarNumber;
	@Column(name = "delivered_phone_number")
	@Digits(integer = 10, fraction = 0)
	private long deliveredPhoneNumber;
	@Column(name = "delivered_city")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid  Delivered City")
	private String deliveredCity;
	@Column(name = "delivered_pincode")
	@Digits(integer = 6, fraction = 0)
	private long deliveredPincode;
	
	@OneToOne(fetch =FetchType.LAZY)
	@JoinColumn(name="package_id",nullable=false,insertable=false,updatable=false)
	private WarehousePackages packages;

	public WarehousePackages getPackages() {
		return packages;
	}

	public void setPackages(WarehousePackages packages) {
		this.packages = packages;
	}

	public int getDeliveryNumber() {
		return deliveryNumber;
	}

	public void setDeliveryNumber(int deliveryNumber) {
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
