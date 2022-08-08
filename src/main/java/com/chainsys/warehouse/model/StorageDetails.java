package com.chainsys.warehouse.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="StorageDetails")
public class StorageDetails {
	@Id
	@Column(name ="receipt_number")
	@Min(value=1,message="receiptNumber is not be required")
	private int receiptNumber;
	@Column(name ="receipt_date")
	@NotNull(message="receiptNumber may not be null")
	private Date receiptDate; 
	public int getReceiptNumber() {
		return receiptNumber;
	}
	public void setReceiptNumber(int receiptNumber) {
		this.receiptNumber = receiptNumber;
	}
	public Date getReceiptDate() {
		return receiptDate;
	}
	public void setReceiptDate(Date receiptDate) {
		this.receiptDate = receiptDate;
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
	@Column(name ="unit_id")
	@Min(value=1,message="unitId is not required")
	private int unitId;
	@Column(name ="package_id")
	@Min(value=1,message="unitId is not required")
	private int packageId;
	
	}
