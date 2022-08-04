package com.chainsys.warehouse.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.model.PackageDeliveryDetails;
import com.chainsys.warehouse.repository.PackageDeliveryDetailsRepository;
@Service
public class PackageDeliveryDetailsService {
	
	    @Autowired
	    private PackageDeliveryDetailsRepository packageDeliveryDetailsRepository;
	    
	    public List<PackageDeliveryDetails> getPackageDelivaryDetails() {
	        List<PackageDeliveryDetails> listpackageDeliveryDetails = packageDeliveryDetailsRepository.findAll();
	        return listpackageDeliveryDetails;
	    }

	    public PackageDeliveryDetails save(PackageDeliveryDetails packageDeliveryDetails) {
	        return packageDeliveryDetailsRepository.save(packageDeliveryDetails);
	    }

	    public PackageDeliveryDetails findById(int id) {
	        return packageDeliveryDetailsRepository.findById(id);
	    }

	    public void deleteById(int id) {
	    	packageDeliveryDetailsRepository.deleteById(id);
	    }

}
