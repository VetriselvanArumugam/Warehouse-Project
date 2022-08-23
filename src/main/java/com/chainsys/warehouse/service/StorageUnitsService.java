package com.chainsys.warehouse.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.model.StorageUnits;
import com.chainsys.warehouse.repository.StorageUnitsRepository;
@Service
public class StorageUnitsService {
	
	    @Autowired
	    private StorageUnitsRepository storageUnitsRepository;
	    
	    

		public List<StorageUnits> getStorageUnits() {
	        List<StorageUnits> liststorageUnits = storageUnitsRepository.findAll();
	        return liststorageUnits;
	    }

	    public StorageUnits save(StorageUnits storageUnits) {
	    	storageUnits=storageUnitsRepository.save(storageUnits);
	    	int unitId=storageUnits.getUnitId();
	    	StorageUnits sUnits=findById(unitId);
	    	if(sUnits==null)
	    	{
	    		System.out.println("unitid is not available");
	    		return null;
	    	}
	    	int remainingCapacity=sUnits.getMaximumCapacity()-sUnits.getCurrentUsedCapacity();
	    	sUnits.setRemainingCapacity(remainingCapacity);
	        return storageUnitsRepository.save(storageUnits);
	    }

	    public StorageUnits findById(int id) {
	        return storageUnitsRepository.findById(id);
	    }

	    public void deleteById(int id) {
	    	storageUnitsRepository.deleteById(id);
	    }

	    public List<StorageUnits> allStorageUnits()
	    {
	    	return storageUnitsRepository.findAll();
	    }
//	    public List<Warehouse> allWarehouse()
//	    {
//	    	return storageUnitsRepository.findAll();
//	    }
}