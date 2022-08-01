package com.chainsys.warehouse.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.pojo.PackageDelivaryDetails;
import com.chainsys.warehouse.repository.PackageDelivaryDetailsRepository;
@Service
public class PackageDelivaryDetailsService {
	
	    @Autowired
	    private PackageDelivaryDetailsRepository repo;
	    public List<PackageDelivaryDetails> getPackageDelivaryDetails() {
	        List<PackageDelivaryDetails> listWR = repo.findAll();
	        return listWR;
	    }

	    public PackageDelivaryDetails save(PackageDelivaryDetails wr) {
	        return repo.save(wr);
	    }

	    public PackageDelivaryDetails findById(int id) {
	        return repo.findById(id);
	    }

	    public void deleteById(int id) {
	        repo.deleteById(id);
	    }

}
