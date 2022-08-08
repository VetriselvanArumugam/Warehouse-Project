package com.chainsys.warehouse.model;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
@Entity
@Table(name="Packages")
public class Packages {
	@Id
	@Column(name ="package_id")
	@Min(value=1,message="packageId is not be reequired")
	private int packageId;
	@Column(name ="owner_name")
	@NotNull(message="ownerName may not be null")
	private String ownerName;
	@Column(name ="phone_number")
	@Min(value=1,message="phoneNumber is not be required")
	private long PhoneNumber;
	@Column(name ="email_id")
	@NotNull(message="emailId may not be null")
	private String emailId;
	@Column(name ="owner_aadhaar_number")
	@Max(value=100,message="ownerAadhaarNumber is not be required")
	private long ownerAadhaarNumber;
	@Column(name ="package_weight")
	@Max(value=100,message="packageWeight is not be required")
	private int packageWeight;
	@Column(name ="package_height")
	@Min(value=1,message="packageHeight is not be required")
	private int packageHeight;
	@Column(name ="package_number")
	@Max(value=100,message="packageNumber is not be required")
	private int packageNumber;
	@Column(name ="package_name")
	@NotNull(message="packageName may not be null")
	private String packageName;
	@Column(name ="package_type")
	@NotNull(message="packageType may not be null")
	private String packageType;
	@Column(name ="package_date")
	@NotNull(message="packageDate may not be null")
	private Date packageDate;
	@Column(name ="expiry_date")
	@NotNull(message="expiryDate may not be null")
	private Date expiryDate;
	@Column(name ="status")
	@NotNull(message="status may not be null")
	private String status;
	@OneToOne (mappedBy="packages", fetch =FetchType.LAZY)
	private PackageDeliveryDetails packageDeliveryDetails;
	public PackageDeliveryDetails getPackageDeliveryDetails() {
		return packageDeliveryDetails;
	}
	public void setPackageDeliveryDetails(PackageDeliveryDetails packageDeliveryDetails) {
		this.packageDeliveryDetails = packageDeliveryDetails;
	}
	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public long getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(long phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public long getOwnerAadhaarNumber() {
		return ownerAadhaarNumber;
	}
	public void setOwnerAadhaarNumber(long ownerAadhaarNumber) {
		this.ownerAadhaarNumber = ownerAadhaarNumber;
	}
	public int getPackageWeight() {
		return packageWeight;
	}
	public void setPackageWeight(int packageWeight) {
		this.packageWeight = packageWeight;
	}
	public int getPackageHeight() {
		return packageHeight;
	}
	public void setPackageHeight(int packageHeight) {
		this.packageHeight = packageHeight;
	}
	public int getPackageNumber() {
		return packageNumber;
	}
	public void setPackageNumber(int packageNumber) {
		this.packageNumber = packageNumber;
	}
	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public String getPackageType() {
		return packageType;
	}
	public void setPackageType(String packageType) {
		this.packageType = packageType;
	}
	public Date getPackageDate() {
		return packageDate;
	}
	public void setPackageDate(Date packageDate) {
		this.packageDate = packageDate;
	}
	public Date getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
}
