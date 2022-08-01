package com.chainsys.warehouse.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.warehouse.pojo.PackageDelivaryDetails;
public interface PackageDelivaryDetailsRepository extends CrudRepository<PackageDelivaryDetails,Integer>{
	PackageDelivaryDetails findById(int id);
	PackageDelivaryDetails save(PackageDelivaryDetails dr);
	void deleteById(int dr_id);
	List <PackageDelivaryDetails> findAll();
}