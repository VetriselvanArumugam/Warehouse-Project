package com.chainsys.warehouse.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.model.StorageDetails;
import com.chainsys.warehouse.repository.StorageDetailsRepository;

@Service
public class StorageDetailsService {
	
	    @Autowired
	    private StorageDetailsRepository storageDetailsRepository;
	    public List<StorageDetails> getStorageDetails() {
	        List<StorageDetails> liststorageDetails = storageDetailsRepository.findAll();
	        return liststorageDetails;
	    }

	    public StorageDetails save(StorageDetails thestorageDetails) {
	        return storageDetailsRepository.save(thestorageDetails);
	    }

	    public StorageDetails findById(int id) {
	        return storageDetailsRepository.findById(id);
	    }

	    public void deleteById(int id) {
	    	storageDetailsRepository.deleteById(id);
	    }

} 


