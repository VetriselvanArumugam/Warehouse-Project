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
import com.chainsys.warehouse.service.StorageUnitsService;

@Controller
@RequestMapping("/storageunit")
public class StorageUnitsController {
	@Autowired
	StorageUnitsService storageUnitService;
	@GetMapping("/list")
	
	public String getAllStorageunit(Model model) {
		List<StorageUnits> storageunitslist = storageUnitService.getStorageUnits();
		model.addAttribute("allstorageunits", storageunitslist);
		return "list-storageunits-form";
	}

	@GetMapping("/addform")
	
	public String showAddForm(Model model) {
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
		return "redirect:/storageunit/list";
	}
	@GetMapping("/updatestorageunitsform")
    public String updatestorageunits() {
        return "update-storageunitsid-form";
    }
	@GetMapping("/updateform")
	@Valid
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
		return "redirect:/storageunit/list";
	}
	@GetMapping("/deletestorageunitsform")
    public String deletestorageunits() {
        return "delete-storageunits-form";
    }
	@GetMapping("/deletestorageunits")
	
	public String deleteStorageUnits(@RequestParam("id") int id) {
		storageUnitService.deleteById(id);
		return "redirect:/storageunit/list";
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
