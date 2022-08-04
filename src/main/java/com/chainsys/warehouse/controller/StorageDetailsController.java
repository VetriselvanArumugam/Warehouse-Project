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

import com.chainsys.warehouse.model.StorageDetails;
import com.chainsys.warehouse.service.StorageDetailsService;

@Controller
@RequestMapping("/storageDetails")
public class StorageDetailsController {
    @Autowired
    StorageDetailsService sdservices;
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
    public String addNewstorageDetails(@ModelAttribute("addstorageDetails") StorageDetails thestorageDetails) {
        sdservices.save(thestorageDetails);
        return "redirect:/storageDetails/list";
    }
    @GetMapping("/updateform")
    public String showUpdateForm(@RequestParam("id") int id,Model model)
    {
        StorageDetails thestorageDetails=sdservices.findById(id);
        model.addAttribute("updatestorageDetails",thestorageDetails);
        return "update-storagedetails-form";
    }
    @PostMapping("/update")
    public String updateStorageDetails(@ModelAttribute("updatestorageDetails") StorageDetails thestorageDetails) {
        sdservices.save(thestorageDetails);
        return "redirect:/storageDetails/list";
    }
    @GetMapping("/deletestorageDetails")
    public String deletestorageDetails(@RequestParam("id") int id) {
        sdservices.deleteById(id);
        return "redirect:/storageDetails/list";
    }
    @GetMapping("/findstorageDetailsById")
    public String findstorageDetailsById(@RequestParam("id") int id,Model model) {
        StorageDetails thestorageDetails=sdservices.findById(id);
        model.addAttribute("getstorageDetailsid",thestorageDetails);
        return "find-storagedetails-form";
    }
}