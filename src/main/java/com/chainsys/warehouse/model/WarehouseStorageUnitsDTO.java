package com.chainsys.warehouse.model;

import java.util.ArrayList;
import java.util.List;

public class WarehouseStorageUnitsDTO {

	private Warehouse warehouse;
	private List<StorageUnits> storageUnitList =new ArrayList<StorageUnits>();
	public Warehouse getWarehouse() {
		return warehouse;
	}
	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}
	public List<StorageUnits> getStorageUnitList() {
		return storageUnitList;
	}
	public void addStorageUnitList(StorageUnits storageUnits) {
		storageUnitList.add(storageUnits);
	}
	
}
