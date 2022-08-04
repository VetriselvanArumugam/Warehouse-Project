package com.chainsys.warehouse.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.warehouse.model.Packages;
import com.chainsys.warehouse.repository.PackagesRepository;

@Service
public class PackagesService {

	@Autowired
	private PackagesRepository packagesRepository;

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

}
