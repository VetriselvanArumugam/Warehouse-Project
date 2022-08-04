package com.chainsys.warehouse.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.warehouse.model.PackageDeliveryDetails;


public interface PackageDeliveryDetailsRepository extends CrudRepository<PackageDeliveryDetails, Integer> {
	PackageDeliveryDetails findById(int id);

	PackageDeliveryDetails save(PackageDeliveryDetails packageDeliveryDetails);

	PackageDeliveryDetails deleteById(int packageDeliveryDetails);

	List<PackageDeliveryDetails> findAll();
}