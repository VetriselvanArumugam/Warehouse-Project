package com.chainsys.warehouse.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.warehouse.pojo.Packages;
public interface PackagesRepository extends CrudRepository<Packages,Integer>{
	Packages findById(int id);
	Packages save(Packages dr);
	void deleteById(int dr_id);
	List <Packages> findAll();
}
