package com.chainsys.warehouse.repository;
	import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.warehouse.model.StorageUnits;
	public interface StorageUnitsRepository extends CrudRepository<StorageUnits,Integer>{
		StorageUnits findById(int id);
		StorageUnits save(StorageUnits id);
		void deleteById(int su_id);
		List <StorageUnits> findAll();
		List<StorageUnits> findByWarehouseId(int id);
	}