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

import com.chainsys.warehouse.model.PackagesPackageDeliveryDetailsDTO;
import com.chainsys.warehouse.model.WarehousePackages;
import com.chainsys.warehouse.service.WarehousePackagesService;

@Controller
@RequestMapping("/packages")
public class WarehousePackagesController {
    @Autowired
    WarehousePackagesService WarehousePackagesService;
    private static final String WAREHOUSEPACKAGESLIST = "redirect:/packages/list";
    @GetMapping("/list")
    
    public String getAllPackages(Model model) {
        List<WarehousePackages> packageslist = WarehousePackagesService.getPackages();
        model.addAttribute("allpackages",packageslist);
        return "list-packages-form";
    }
    @GetMapping("/addform")
    
    public String showAddForm(Model model)
    {
    	WarehousePackages thepackages=new WarehousePackages();
        model.addAttribute("addpackages",thepackages);
        return "add-packages-form";
    }
    @PostMapping("/add")
    
    public String addNewPackages( @Valid @ModelAttribute("addpackages") WarehousePackages thepackages,Errors errors) {
    	if(errors.hasErrors()) {
			return "add-packages-form";
		}
    	WarehousePackagesService.save(thepackages);
        return WAREHOUSEPACKAGESLIST ;
    }
    @GetMapping("/updatewarehousepackagesform")
    public String updateWarehousePackages() {
        return "update-warehousepackagesid-form";
    }
    @GetMapping("/updateform")
    
    public String showUpdateForm(@RequestParam("id") int id,Model model)
    {
    	WarehousePackages thepackages=WarehousePackagesService.findById(id);
        model.addAttribute("updatepackages",thepackages);
        return "update-packages-form";
    }
    @PostMapping("/update")
    
    public String updatePackages( @Valid @ModelAttribute("updatepackages") WarehousePackages thepackages,Errors errors) {
    	if(errors.hasErrors()) {
			return "update-packages-form";
		}
    	WarehousePackagesService.save(thepackages);
        return WAREHOUSEPACKAGESLIST ;
    }
    @GetMapping("/deletewarehousepackagesform")
    public String deleteWarehousePackages() {
        return "delete-warehousepackages-form";
    }
    @GetMapping("/deletepackages")
    
    public String deletepackages(@RequestParam("id") int id) {
    	WarehousePackagesService.deleteById(id);
        return WAREHOUSEPACKAGESLIST ;
    }
    @GetMapping("/getwarehousepackagesform")
    public String getWarehousePackages() {
        return "get-warehousepackages-form";
    }
    @GetMapping("/findpackagesById")
    
    public String findpackagesById(@RequestParam("id") int id,Model model) {
        WarehousePackages thepackages=WarehousePackagesService.findById(id);
        model.addAttribute("getpackagesid",thepackages);
        return "find-packages-id-form";
    }
    
    @GetMapping("/getpackagedeliveryform")
    public String getpackagedeliveryform() {
        return "dto-packagedelivery-form";
    }
    @GetMapping("/getpackagespackagedeliverydetails")
    
    public String getPackagesPackageDeliveryDetails(@RequestParam("packageId")int id,Model model) {
        PackagesPackageDeliveryDetailsDTO packagesPackageDeliveryDetails = WarehousePackagesService.getPackagesPackageDeliveryDetails(id);
        model.addAttribute("getpackages",packagesPackageDeliveryDetails.getPackages());
        model.addAttribute("deliverydetails",packagesPackageDeliveryDetails.getPackageDeliveryDetails());
        return "list-packages-packagedeliverydetails-form";
}
    
   
    

}