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

import com.chainsys.warehouse.model.PackageDeliveryDetails;
import com.chainsys.warehouse.service.PackageDeliveryDetailsService;

@Controller
@RequestMapping("/packageDeliveryDetails")
public class PackageDeliveryDetailsController {
    @Autowired
    PackageDeliveryDetailsService pddservice;
    @GetMapping("/list")
    public String getAllPackageDeliveryDetails(Model model) {
        List<PackageDeliveryDetails> packageDeliveryDetailslist = pddservice.getPackageDelivaryDetails();
        model.addAttribute("allpackageDeliveryDetails",packageDeliveryDetailslist);
        return "list-packagedeliverydetails-form";
    }
    @GetMapping("/addform")
    public String showAddForm(Model model)
    {
    	PackageDeliveryDetails thepackageDeliveryDetails=new PackageDeliveryDetails();
        model.addAttribute("addpackageDeliveryDetails",thepackageDeliveryDetails);
        return "add-packagedeliverydetails-form";
    }
    @PostMapping("/add")
    public String addNewPackageDeliveryDetails(@ModelAttribute("addpackageDeliveryDetails") PackageDeliveryDetails thepackageDeliveryDetails) {
    	pddservice.save(thepackageDeliveryDetails);
        return "redirect:/packageDeliveryDetails/list";
    }
    @GetMapping("/updateform")
    public String showUpdateForm(@RequestParam("id") int id,Model model)
    {
    	PackageDeliveryDetails thepackageDeliveryDetails=pddservice.findById(id);
        model.addAttribute("updatepackageDeliveryDetails",thepackageDeliveryDetails);
        return "update-packagedeliverydetails-form";
    }
    @PostMapping("/update")
    public String updatePackageDeliveryDetails(@ModelAttribute("updatepackageDeliveryDetails") PackageDeliveryDetails thepackageDeliveryDetails) {
    	pddservice.save(thepackageDeliveryDetails);
        return "redirect:/packageDeliveryDetails/list";
    }
    @GetMapping("/deletepackageDeliveryDetails")
    public String deletepackageDeliveryDetails(@RequestParam("id") int id) {
    	pddservice.deleteById(id);
        return "redirect:/packageDeliveryDetails/list";
    }
    @GetMapping("/findpackagesById")
    public String findpackageDeliveryDetailsById(@RequestParam("id") int id,Model model) {
        PackageDeliveryDetails thepackageDeliveryDetails=pddservice.findById(id);
        model.addAttribute("getpackageDeliveryDetailsid",thepackageDeliveryDetails);
        return "find-packagedeliverydetails-id-form";
    }
}