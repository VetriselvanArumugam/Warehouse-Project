package com.chainsys.warehouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.model.Warehouse;
import com.chainsys.warehouse.repository.WarehouseRepository;
@Service
public class WarehouseService {
	
	    @Autowired
	    private WarehouseRepository warehouseRepository;
	    public List<Warehouse> getWarehouse() {
	        List<Warehouse> listWarehouse = warehouseRepository.findAll();
	        return listWarehouse;
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

}
