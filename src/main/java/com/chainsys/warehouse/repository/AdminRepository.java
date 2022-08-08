package com.chainsys.warehouse.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.warehouse.model.Admin;

public interface AdminRepository extends CrudRepository<Admin, Integer>{
	
	Admin findByUserNameAndPassword(String userName,String password);
    Admin save (Admin objAdmin);
    List<Admin> findAll();
    
}
