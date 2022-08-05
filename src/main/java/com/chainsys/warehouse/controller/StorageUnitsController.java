package com.chainsys.warehouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.warehouse.model.StorageUnits;
import com.chainsys.warehouse.model.WarehouseStorageUnitsDTO;
import com.chainsys.warehouse.service.StorageUnitsService;
import com.chainsys.warehouse.service.WarehouseService;

@Controller
@RequestMapping("/storageunit")
public class StorageUnitsController {
	@Autowired
	StorageUnitsService storageUnitService;
	@GetMapping("/list")
	public String getAllStorageunit(Model model) {
		List<StorageUnits> storage_unitslist = storageUnitService.getStorageUnits();
		model.addAttribute("allstorageunits", storage_unitslist);
		return "list-storageunits-form";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		StorageUnits theStorageUnits = new StorageUnits();
		model.addAttribute("addstorageunits", theStorageUnits);
		return "add-storageunits-form";
	}

	@PostMapping("/add")
	public String addNewStorageUnits(@ModelAttribute("addstorageunits") StorageUnits thestorageunits) {
		storageUnitService.save(thestorageunits);
		return "redirect:/storageunit/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id") int id, Model model) {
		StorageUnits thestorageunits = storageUnitService.findById(id);
		model.addAttribute("updatestorageunits", thestorageunits);
		return "update-storageunits-form";
	}

	@PostMapping("/update")
	public String updateStorageUnits(@ModelAttribute("updatestorageunits") StorageUnits thestorageunits) {
		storageUnitService.save(thestorageunits);
		return "redirect:/storageunit/list";
	}

	@GetMapping("/deletestorageunits")
	public String deleteStorageUnits(@RequestParam("id") int id) {
		storageUnitService.deleteById(id);
		return "redirect:/storageunit/list";
	}

	@GetMapping("/findstorageunitsById")
	public String findStorageUnitsById(@RequestParam("id") int id, Model model) {
		StorageUnits thestorageunits = storageUnitService.findById(id);
		model.addAttribute("getstorageunits", thestorageunits);
		return "find-storageunits-form";
	}
	
    }
