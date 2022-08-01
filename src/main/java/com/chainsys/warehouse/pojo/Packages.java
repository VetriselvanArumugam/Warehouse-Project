package com.chainsys.warehouse.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Packages")
public class Packages {
	@Id
	@Column(name ="package_id")
	private int packageId;
	@Column(name ="package_number")
	private int packageNumber;
	@Column(name ="package_name")
	private String packageName;
	@Column(name ="package_type")
	private String packageType;
	@Column(name ="package_date")
	private Date packedDate;
	@Column(name ="expiry_date")
	private Date expiryDate;
	@Column(name ="status")
	private String status;
	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
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
	public Date getPackedDate() {
		return packedDate;
	}
	public void setPackedDate(Date packedDate) {
		this.packedDate = packedDate;
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
	@Column(name ="owner_name")
	private String ownerName;
	@Column(name ="phone_number")
	private long PhoneNumber;
	@Column(name ="email_id")
	private String emailId;
	@Column(name ="owner_aadhaar_number")
	private long ownerAadhaarNumber;
	@Column(name ="package_weight")
	private int packageWeight;
	@Column(name ="package_height")
	private int packageHeight;
	
	
}