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

import com.chainsys.warehouse.model.PackageDeliveryDetails;
import com.chainsys.warehouse.model.StorageUnits;
import com.chainsys.warehouse.model.WarehousePackages;
import com.chainsys.warehouse.service.PackageDeliveryDetailsService;
import com.chainsys.warehouse.service.StorageUnitsService;
import com.chainsys.warehouse.service.WarehousePackagesService;

@Controller
@RequestMapping("/packageDeliveryDetails")
public class PackageDeliveryDetailsController {
    @Autowired
    PackageDeliveryDetailsService pddservice;
    @Autowired
    private StorageUnitsService storageUnitsService; 
    @Autowired
    private WarehousePackagesService warehousePackagesService;
    private static final String PACKAGELIST = "redirect:/packageDeliveryDetails/list";
    @GetMapping("/list")
    
    public String getAllPackageDeliveryDetails(Model model) {
        List<PackageDeliveryDetails> packageDeliveryDetailslist = pddservice.getPackageDelivaryDetails();
        model.addAttribute("allpackageDeliveryDetails",packageDeliveryDetailslist);
        return "list-packagedeliverydetails-form";
    }
    @GetMapping("/addform")
    public String showAddForm(Model model)
    {
    	List<WarehousePackages> allWarehousePackages=warehousePackagesService.allWarehousePackages();
    	model.addAttribute("getAllWarehousePackages", allWarehousePackages);
    	List<StorageUnits> allStorageUnits=storageUnitsService.allStorageUnits();
    	model.addAttribute("getAllStorageUnits", allStorageUnits);
    	PackageDeliveryDetails thepackageDeliveryDetails=new PackageDeliveryDetails();
        model.addAttribute("addpackageDeliveryDetails",thepackageDeliveryDetails);
        return "add-packagedeliverydetails-form";
    }
    @PostMapping("/add")
    public String addNewPackageDeliveryDetails( @ModelAttribute("addpackageDeliveryDetails") PackageDeliveryDetails thepackageDeliveryDetails,Errors errors) {
    	if(errors.hasErrors()) {
			return "add-packagedeliverydetails-form";
		}
    	pddservice.save(thepackageDeliveryDetails);
        return PACKAGELIST ;
    }
    @GetMapping("/updatepackagedeliverydetailsform")
    public String updatepackagedeliverydetails() {
        return "update-packagedeliverydetailsid-form";
    }
    @GetMapping("/updateform")
    
    public String showUpdateForm(@RequestParam("id") int id,Model model)
    {
    	PackageDeliveryDetails thepackageDeliveryDetails=pddservice.findById(id);
        model.addAttribute("updatepackageDeliveryDetails",thepackageDeliveryDetails);
        return "update-packagedeliverydetails-form";
    }
    @PostMapping("/update")
    
    public String updatePackageDeliveryDetails(@Valid @ModelAttribute("updatepackageDeliveryDetails") PackageDeliveryDetails thepackageDeliveryDetails,Errors errors) {
    	if(errors.hasErrors()) {
			return "update-packagedeliverydetails-form";
		}
    	pddservice.save(thepackageDeliveryDetails);
        return PACKAGELIST ;
    }
    @GetMapping("/deletepackagedeliverydetailsform")
    public String deletepackagedeliverydetails() {
        return "delete-packagedeliverydetails-form";
    }
    @GetMapping("/deletepackageDeliveryDetails")
    
    public String deletepackageDeliveryDetails(@RequestParam("id") int id) {
    	pddservice.deleteById(id);
        return PACKAGELIST ;
    }
    @GetMapping("/getpackagedeliveryetailsform")
    public String getpackagedeliverydetails() {
        return "get-packagedeliverydetails-form";
    }
    @GetMapping("/findpackagesById")
    
    public String findpackageDeliveryDetailsById(@RequestParam("id") int id,Model model) {
        PackageDeliveryDetails thepackageDeliveryDetails=pddservice.findById(id);
        model.addAttribute("getpackageDeliveryDetailsid",thepackageDeliveryDetails);
        return "find-packagedeliverydetails-id-form";
    }
}