package com.chainsys.warehouse.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.pojo.Packages;
import com.chainsys.warehouse.repository.PackagesRepository;
@Service
public class PackagesService {
	
	    @Autowired
	    private PackagesRepository repo;
	    public List<Packages> getPackages() {
	        List<Packages> listWR = repo.findAll();
	        return listWR;
	    }

	    public Packages save(Packages wr) {
	        return repo.save(wr);
	    }

	    public Packages findById(int id) {
	        return repo.findById(id);
	    }

	    public void deleteById(int id) {
	        repo.deleteById(id);
	    }

}
