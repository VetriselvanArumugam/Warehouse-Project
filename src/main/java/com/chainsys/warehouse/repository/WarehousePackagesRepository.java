package com.chainsys.warehouse.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.warehouse.model.WarehousePackages;
public interface WarehousePackagesRepository extends CrudRepository<WarehousePackages,Integer>{
	WarehousePackages findById(int id);
	WarehousePackages save(WarehousePackages dr);
	void deleteById(int drid);
	List <WarehousePackages> findAll();
}
