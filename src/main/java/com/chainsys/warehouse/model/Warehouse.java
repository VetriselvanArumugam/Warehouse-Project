package com.chainsys.warehouse.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
@Entity
@Table(name="WAREHOUSE")
public class Warehouse {
	@Id
	@Column(name ="warehouseid")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "waid")
    @SequenceGenerator(name = "waid", sequenceName = "waid",  allocationSize = 1)
	private int warehouseId;
	@Column(name ="address")
	private String address;
	@Column(name ="location")
	private String location;
	@Column(name ="state")
	private String state;
	@Column(name ="country")
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
	private String totalArea;
	@Column(name ="warehouse_type")
	private String warehouseType;
	
}


