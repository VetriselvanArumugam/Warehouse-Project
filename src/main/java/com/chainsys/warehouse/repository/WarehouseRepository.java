package com.chainsys.warehouse.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.warehouse.pojo.Warehouse;
	public interface WarehouseRepository extends CrudRepository<Warehouse,Integer>{
		Warehouse findById(int id);
		Warehouse save(Warehouse dr);
		// Used for both adding new Doctor and Modifying new Doctor
		void deleteById(int dr_id);
		List <Warehouse> findAll();
	}

