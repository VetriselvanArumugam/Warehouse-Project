package com.chainsys.warehouse.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.warehouse.model.Admin;
import com.chainsys.warehouse.model.Warehouse;
import com.chainsys.warehouse.repository.AdminRepository;
@Service
public class AdminService {
	@Autowired
	private AdminRepository adminRepository;
	
	public Admin getUserNamePassword(String userName,String password) {
        return adminRepository.findByUserNameAndPassword(userName, password);
        
    }
	public Admin save(Admin ad) {
		return adminRepository.save(ad);
	}
	 public List<Admin> getAdmin() {
	        List<Admin> listAdmin =adminRepository.findAll();
	        return listAdmin;
	    }
	
}
