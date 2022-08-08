package com.chainsys.warehouse.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="storage_units")
public class StorageUnits {

	@Column(name ="warehouseid")
	@Min(value=1,message="Id is not required")
	private int warehouseId;
	@Id
	@Column(name ="unit_id")
	@Min (value=1,message="Id is not required")
	private int unitId;
	@Column(name ="storage_type")
	@NotNull(message="storageType may not be null")
	private String storageType;
	@Column(name ="maximum_capacity")
	@Max(value=100,message="maximumCapacity is not required")
	private int maximumCapacity;
	@Column(name ="current_used_capacity")
	@Max(value=100,message="currentUsedCapacity is not required")
	private int currentUsedCapacity;
	@Column(name ="status")
	@NotNull(message="status may not be null")
	private String status;
	@Column(name ="location_of_storage_unit")
	@NotNull(message="locationOfStorageUnit may not be null")
	private String locationOfStorageUnit;
	
	@ManyToOne(fetch =FetchType.LAZY)
	@JoinColumn(name = "warehouseid", nullable = false, insertable = false, updatable =false)
	private Warehouse warehouse;
	
	public Warehouse getWarehouse() {
		return warehouse;
	}
	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}
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

	
}

