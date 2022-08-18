package com.chainsys.warehouse.model;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
@Entity
@Table(name = "warehouse_packages")
public class WarehousePackages {
	@Id
	@Column(name = "package_id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "wpid")
    @SequenceGenerator(name = "wpid", sequenceName = "wpid",  allocationSize = 1)
	private int packageId;
	@Column(name = "owner_name")
	private String ownerName;
	@Column(name = "phone_number")
	private long PhoneNumber;
	@Column(name = "email_id")
	private String emailId;
	@Column(name = "owner_aadhaar_number")
	private long ownerAadhaarNumber;
	@Column(name = "package_weight")
	private int packageWeight;
	@Column(name = "package_height")
	private int packageHeight;
	@Column(name = "package_number")
	private int packageNumber;
	@Column(name = "package_name")
	private String packageName;
	@Column(name = "package_type")
	private String packageType;
	@Column(name = "package_date")
	private Date packageDate;
	@Column(name = "expiry_date")
	private Date expiryDate;
	@Column(name = "status")
	private String status;
	@OneToOne(mappedBy = "packages", fetch = FetchType.LAZY)
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
