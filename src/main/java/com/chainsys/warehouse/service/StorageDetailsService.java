package com.chainsys.warehouse.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.pojo.StorageDetails;
import com.chainsys.warehouse.repository.StorageDetailsRepository;

@Service
public class StorageDetailsService {
	
	    @Autowired
	    private StorageDetailsRepository repo;
	    public List<StorageDetails> getStorageDetails() {
	        List<StorageDetails> listWR = repo.findAll();
	        return listWR;
	    }

	    public StorageDetails save(StorageDetails wr) {
	        return repo.save(wr);
	    }

	    public StorageDetails findById(int id) {
	        return repo.findById(id);
	    }

	    public void deleteById(int id) {
	        repo.deleteById(id);
	    }

} 


