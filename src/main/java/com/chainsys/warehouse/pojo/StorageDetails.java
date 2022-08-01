package com.chainsys.warehouse.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="StorageDetails")
public class StorageDetails {
	@Id
	@Column(name ="receipt_number")
	private long receiptNumber;
	@Column(name ="receipt_date")
	private Date receiptDate;
	public long getReceiptNumber() {
		return receiptNumber;
	}
	public void setReceiptNumber(long receiptNumber) {
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
	private int unitId;
	@Column(name ="package_id")
	private int packageId;
	
	}