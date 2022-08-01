package com.chainsys.warehouse.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.warehouse.pojo.StorageDetails;
	public interface StorageDetailsRepository extends CrudRepository<StorageDetails,Integer>{
		StorageDetails findById(int id);
		StorageDetails save(StorageDetails dr);
		void deleteById(int dr_id);
		List <StorageDetails> findAll();
	}