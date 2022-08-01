package com.chainsys.warehouse.repository;
	import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.warehouse.pojo.StorageUnits;
	public interface StorageUnitsRepository extends CrudRepository<StorageUnits,Integer>{
		StorageUnits findById(int id);
		StorageUnits save(StorageUnits dr);
		void deleteById(int dr_id);
		List <StorageUnits> findAll();
	}