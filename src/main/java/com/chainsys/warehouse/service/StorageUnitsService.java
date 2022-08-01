package com.chainsys.warehouse.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.pojo.StorageUnits;
import com.chainsys.warehouse.repository.StorageUnitsRepository;
@Service
public class StorageUnitsService {
	
	    @Autowired
	    private StorageUnitsRepository repo;
	    public List<StorageUnits> getStorageUnits() {
	        List<StorageUnits> listWR = repo.findAll();
	        return listWR;
	    }

	    public StorageUnits save(StorageUnits wr) {
	        return repo.save(wr);
	    }

	    public StorageUnits findById(int id) {
	        return repo.findById(id);
	    }

	    public void deleteById(int id) {
	        repo.deleteById(id);
	    }

}