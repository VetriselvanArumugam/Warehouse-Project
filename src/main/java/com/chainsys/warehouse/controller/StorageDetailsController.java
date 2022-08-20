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

import com.chainsys.warehouse.model.StorageDetails;
import com.chainsys.warehouse.service.StorageDetailsService;

@Controller
@RequestMapping("/storageDetails")
public class StorageDetailsController {
    @Autowired
    StorageDetailsService sdservices;
    private static final String STORAGEDETAILSLIST = "redirect:/storageDetails/list";
    @GetMapping("/list")
    
    public String getAllStorageDetails(Model model) {
        List<StorageDetails> storageDetails = sdservices.getStorageDetails();
        model.addAttribute("allstorageDetails",storageDetails);
        return "list-storagedetails-form";
    }
    @GetMapping("/addform")
    
    public String showAddForm(Model model)
    {
        StorageDetails thestorageDetails=new StorageDetails();
        model.addAttribute("addstorageDetails",thestorageDetails);
        return "add-storagedetails-form";
    }
    @PostMapping("/add")
    
    public String addNewstorageDetails(@Valid @ModelAttribute("addstorageDetails") StorageDetails thestorageDetails,Errors errors) {
    	if(errors.hasErrors()) {
			return "add-storagedetails-form";
		}
        sdservices.save(thestorageDetails);
        return STORAGEDETAILSLIST ;
    }
    @GetMapping("/updatestoragedetailsform")
    public String updatestoragedetails() {
        return "update-storagedetailsid-form";
    }
    @GetMapping("/updateform")
    
    public String showUpdateForm(@RequestParam("id") int id,Model model)
    {
        StorageDetails thestorageDetails=sdservices.findById(id);
        model.addAttribute("updatestorageDetails",thestorageDetails);
        return "update-storagedetails-form";
    }
    @PostMapping("/update")
    
    public String updateStorageDetails(@Valid @ModelAttribute("updatestorageDetails") StorageDetails thestorageDetails,Errors errors) {
    	if(errors.hasErrors()) {
			return "update-storagedetailsid-form";
		}
        sdservices.save(thestorageDetails);
        return STORAGEDETAILSLIST;
    }
    @GetMapping("/deletestoragedetailsform")
    public String deletestoragedetails() {
        return "delete-storagedetails-form";
    }
    @GetMapping("/deletestorageDetails")
    
    public String deletestorageDetails(@RequestParam("id") int id) {
        sdservices.deleteById(id);
        return STORAGEDETAILSLIST;
    }
    @GetMapping("/getstoragedetailsform")
    public String getstoragedetails() {
        return "get-storagedetails-form";
    }
    @GetMapping("/findstorageDetailsById")
    
    
    public String findstorageDetailsById(@RequestParam("id") int id,Model model) {
        StorageDetails thestorageDetails=sdservices.findById(id);
        model.addAttribute("getstorageDetailsid",thestorageDetails);
        return "find-storagedetails-form";
    }
}