package com.chainsys.warehouse.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="WAREHOUSE")
public class Warehouse {
	@Id
	@Column(name ="warehouseid")
	@Min(value=1 ,message ="Id should Be 1")
	private int warehouseId;
	@Column(name ="address")
	@NotNull(message="address may not be null")
	private String address;
	@Column(name ="location")
	@NotNull(message="location may not be null")
	private String location;
	@Column(name ="state")
	@NotNull(message="state may not be null")
	private String state;
	@Column(name ="country")
	@NotNull(message="country may not be null")
	private String country;
	@Column(name ="pincode")
	@Digits(integer = 6, fraction = 0)
	private int pincode;
	
	@OneToMany(mappedBy ="warehouse",fetch=FetchType.LAZY)
	private List<StorageUnits> storageUnits;
	
	public List<StorageUnits> getStorageUnits() {
		return storageUnits;
	}
	public void setStorageUnits(List<StorageUnits> storageUnits) {
		this.storageUnits = storageUnits;
	}
	public int getWarehouseId() {
		return warehouseId;
	}
	public void setWarehouseId(int warehouseId) {
		this.warehouseId = warehouseId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getTotalArea() {
		return totalArea;
	}
	public void setTotalArea(String totalArea) {
		this.totalArea = totalArea;
	}
	public String getWarehouseType() {
		return warehouseType;
	}
	public void setWarehouseType(String warehouseType) {
		this.warehouseType = warehouseType;
	}
	@Column(name ="total_area")
	@Max(value=100,message="totalArea is not be required")
	private String totalArea;
	@Column(name ="warehouse_type")
	@NotNull(message="warehouseType may not be null")
	private String warehouseType;
	
}


