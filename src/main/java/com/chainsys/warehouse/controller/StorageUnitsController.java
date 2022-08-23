package com.chainsys.warehouse.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.warehouse.model.StorageUnits;
import com.chainsys.warehouse.model.Warehouse;
import com.chainsys.warehouse.model.WarehousePackages;
import com.chainsys.warehouse.service.StorageUnitsService;
import com.chainsys.warehouse.service.WarehouseService;

@Controller
@RequestMapping("/storageunit")
public class StorageUnitsController {
	@Autowired
    private WarehouseService warehouseService; 
	@Autowired
	StorageUnitsService storageUnitService;
	 private static final String STORAGEUNITSLIST = "redirect:/storageunit/list";
	@GetMapping("/list")
	
	public String getAllStorageunit(Model model) {
		List<StorageUnits> storageunitslist = storageUnitService.getStorageUnits();
		model.addAttribute("allstorageunits", storageunitslist);
		return "list-storageunits-form";
	}

	@GetMapping("/addform")
	
	public String showAddForm(Model model) {
		List<Warehouse> allWarehouse=warehouseService.allWarhouse();
		model.addAttribute("getwarehouse", allWarehouse);
		StorageUnits theStorageUnits = new StorageUnits();
		model.addAttribute("addstorageunits", theStorageUnits);
		return "add-storageunits-form";
	}

	@PostMapping("/add")
	
	public String addNewStorageUnits(@Valid @ModelAttribute("addstorageunits") StorageUnits thestorageunits , Errors errors) {
		if(errors.hasErrors()) {
			return "add-storageunits-form";
		}
		storageUnitService.save(thestorageunits);
		return STORAGEUNITSLIST ;
	}
	@GetMapping("/updatestorageunitsform")
    public String updatestorageunits() {
        return "update-storageunitsid-form";
    }
	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id") int id, Model model) {
		StorageUnits thestorageunits = storageUnitService.findById(id);
		model.addAttribute("updatestorageunits", thestorageunits);
		return "update-storageunits-form";
	}

	@PostMapping("/update")
	
	public String updateStorageUnits(@Valid @ModelAttribute("updatestorageunits") StorageUnits thestorageunits,Errors errors) {
		if(errors.hasErrors()) {
			return "update-storageunits-form";
		}
		storageUnitService.save(thestorageunits);
		return STORAGEUNITSLIST;
	}
	@GetMapping("/deletestorageunitsform")
    public String deletestorageunits() {
        return "delete-storageunits-form";
    }
	@GetMapping("/deletestorageunits")
	
	public String deleteStorageUnits(@RequestParam("id") int id) {
		storageUnitService.deleteById(id);
		return STORAGEUNITSLIST;
	}
	@GetMapping("/getstorageunitsform")
    public String getstorageunits() {
        return "get-storageunits-form";
    }
	@GetMapping("/findstorageunitsById")

	public String findStorageUnitsById(@RequestParam("id") int id, Model model) {
		StorageUnits thestorageunits = storageUnitService.findById(id);
		model.addAttribute("getstorageunits", thestorageunits);
		return "find-storageunits-form";
	}
	
    }
