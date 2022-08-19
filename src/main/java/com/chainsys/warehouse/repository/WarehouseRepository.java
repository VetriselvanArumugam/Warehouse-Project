package com.chainsys.warehouse.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.warehouse.model.Warehouse;
	public interface WarehouseRepository extends CrudRepository<Warehouse,Integer>{
		Warehouse findById(int id);
		Warehouse save(Warehouse dr);
		// Used for both adding new Doctor and Modifying new Doctor
		void deleteById(int drid);
		List <Warehouse> findAll();
	}

