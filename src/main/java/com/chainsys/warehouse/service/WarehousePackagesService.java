package com.chainsys.warehouse.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.model.PackageDeliveryDetails;
import com.chainsys.warehouse.model.PackagesPackageDeliveryDetailsDTO;
import com.chainsys.warehouse.model.StorageUnits;
import com.chainsys.warehouse.model.WarehousePackages;
import com.chainsys.warehouse.repository.PackageDeliveryDetailsRepository;
import com.chainsys.warehouse.repository.WarehousePackagesRepository;

@Service
public class WarehousePackagesService {

	@Autowired
	private WarehousePackagesRepository warehousePackagesRepository;
	@Autowired
	private PackageDeliveryDetailsRepository packageDeliveryDetailsRepository;


	public List<WarehousePackages> getPackages() {
		return warehousePackagesRepository.findAll();
	}

	public WarehousePackages save(WarehousePackages wr) {
		return warehousePackagesRepository.save(wr);
	}

	public WarehousePackages findById(int id) {
		return warehousePackagesRepository.findById(id);
	}

	public void deleteById(int id) {
		warehousePackagesRepository.deleteById(id);
	}
	 @Transactional
	    public PackagesPackageDeliveryDetailsDTO getPackagesPackageDeliveryDetails(int id) {
	        WarehousePackages packages = findById(id);
	        PackagesPackageDeliveryDetailsDTO packagesPackageDeliveryDetails = new PackagesPackageDeliveryDetailsDTO();
	        packagesPackageDeliveryDetails.setPackages(packages);
	        PackageDeliveryDetails  packageDeliveryDetails= packageDeliveryDetailsRepository.findPackageDeliveryDetailsByPackageId(id);
	        packagesPackageDeliveryDetails.setPackageDeliveryDetails(packageDeliveryDetails);
	        
	        return packagesPackageDeliveryDetails;
}
	 public List<WarehousePackages> allWarehousePackages()
	    {
	    	return warehousePackagesRepository.findAll();
	    }
}
