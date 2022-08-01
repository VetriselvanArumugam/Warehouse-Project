package com.chainsys.warehouse.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="storage_units")
public class StorageUnits {
	@Id
	@Column(name ="warehouseid")
	private int warehouseId;
	@Column(name ="unit_id")
	private int unitId;
	@Column(name ="storage_type")
	private String storageType;
	public int getWarehouseId() {
		return warehouseId;
	}
	public void setWarehouseId(int warehouseId) {
		this.warehouseId = warehouseId;
	}
	public int getUnitId() {
		return unitId;
	}
	public void setUnitId(int unitId) {
		this.unitId = unitId;
	}
	public String getStorageType() {
		return storageType;
	}
	public void setStorageType(String storageType) {
		this.storageType = storageType;
	}
	public int getMaximumCapacity() {
		return maximumCapacity;
	}
	public void setMaximumCapacity(int maximumCapacity) {
		this.maximumCapacity = maximumCapacity;
	}
	public int getCurrentUsedCapacity() {
		return currentUsedCapacity;
	}
	public void setCurrentUsedCapacity(int currentUsedCapacity) {
		this.currentUsedCapacity = currentUsedCapacity;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getLocationOfStorageUnit() {
		return locationOfStorageUnit;
	}
	public void setLocationOfStorageUnit(String locationOfStorageUnit) {
		this.locationOfStorageUnit = locationOfStorageUnit;
	}
	@Column(name ="maximum_capacity")
	private int maximumCapacity;
	@Column(name ="current_used_capacity")
	private int currentUsedCapacity;
	@Column(name ="status")
	private String status;
	@Column(name ="location_of_storage_unit")
	private String locationOfStorageUnit;
	
}

