package com.chainsys.warehouse.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.warehouse.model.StorageDetails;
import com.chainsys.warehouse.service.StorageDetailsService;
	public interface StorageDetailsRepository extends CrudRepository<StorageDetails,Integer>{
		StorageDetails findById(int id);
		StorageDetails save(StorageDetails thestorageDetails);
		void deleteById(int dr_id);
		List <StorageDetails> findAll();
	}