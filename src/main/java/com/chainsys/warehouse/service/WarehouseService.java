package com.chainsys.warehouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.pojo.Warehouse;
import com.chainsys.warehouse.repository.WarehouseRepository;
@Service
public class WarehouseService {
	
	    @Autowired
	    private WarehouseRepository repo;
	    public List<Warehouse> getWarehouse() {
	        List<Warehouse> listWR = repo.findAll();
	        return listWR;
	    }

	    public Warehouse save(Warehouse wr) {
	        return repo.save(wr);
	    }

	    public Warehouse findById(int id) {
	        return repo.findById(id);
	    }

	    public void deleteById(int id) {
	        repo.deleteById(id);
	    }

}
