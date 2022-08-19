package com.chainsys.warehouse.service;

import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.model.StorageUnits;
import com.chainsys.warehouse.model.Warehouse;
import com.chainsys.warehouse.model.WarehouseStorageUnitsDTO;
import com.chainsys.warehouse.repository.StorageUnitsRepository;
import com.chainsys.warehouse.repository.WarehouseRepository;
@Service
public class WarehouseService {
	
	    @Autowired
	    private WarehouseRepository warehouseRepository;
	    @Autowired
	    private StorageUnitsRepository storageUnitsRepository ;
	    public List<Warehouse> getWarehouse() {
	        return warehouseRepository.findAll();
	    }

	    public Warehouse save(Warehouse warehouse) {
	        return warehouseRepository.save(warehouse);
	    }

	    public Warehouse findById(int id) {
	        return warehouseRepository.findById(id);
	    }

	    public void deleteById(int id) {
	    	warehouseRepository.deleteById(id);
	    	
	    }
	    @Transactional
	    public WarehouseStorageUnitsDTO getWarehouseStorageUnits(int id) {
	        Warehouse warehouse = findById(id);
	        WarehouseStorageUnitsDTO warehouseStorageUnits = new WarehouseStorageUnitsDTO();
	        warehouseStorageUnits.setWarehouse(warehouse);
	        List<StorageUnits> storageUnits = storageUnitsRepository.findByWarehouseId(id);
	        Iterator<StorageUnits> iterator = storageUnits.iterator();
	        while(iterator.hasNext()) {
	        	warehouseStorageUnits.addStorageUnitList((StorageUnits)iterator.next());
	        }
	        return warehouseStorageUnits;
	    }

}
