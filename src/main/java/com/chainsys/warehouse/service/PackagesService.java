package com.chainsys.warehouse.service;

import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.model.PackageDeliveryDetails;
import com.chainsys.warehouse.model.Packages;
import com.chainsys.warehouse.model.PackagesPackageDeliveryDetailsDTO;
import com.chainsys.warehouse.model.StorageUnits;
import com.chainsys.warehouse.model.Warehouse;
import com.chainsys.warehouse.model.WarehouseStorageUnitsDTO;
import com.chainsys.warehouse.repository.PackageDeliveryDetailsRepository;
import com.chainsys.warehouse.repository.PackagesRepository;

@Service
public class PackagesService {

	@Autowired
	private PackagesRepository packagesRepository;
	@Autowired
	private PackageDeliveryDetailsRepository packageDeliveryDetailsRepository;


	public List<Packages> getPackages() {
		List<Packages> listpackages = packagesRepository.findAll();
		return listpackages;
	}

	public Packages save(Packages wr) {
		return packagesRepository.save(wr);
	}

	public Packages findById(int id) {
		return packagesRepository.findById(id);
	}

	public void deleteById(int id) {
		packagesRepository.deleteById(id);
	}
	 @Transactional
	    public PackagesPackageDeliveryDetailsDTO getPackagesPackageDeliveryDetails(int id) {
	        Packages packages = findById(id);
	        PackagesPackageDeliveryDetailsDTO packagesPackageDeliveryDetails = new PackagesPackageDeliveryDetailsDTO();
	        packagesPackageDeliveryDetails.setPackages(packages);
	        PackageDeliveryDetails  packageDeliveryDetails= packageDeliveryDetailsRepository.findPackageDeliveryDetailsByPackageId(id);
	        packagesPackageDeliveryDetails.setPackageDeliveryDetails(packageDeliveryDetails);
	        
	        return packagesPackageDeliveryDetails;
}
}
