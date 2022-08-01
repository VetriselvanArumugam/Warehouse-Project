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

import com.chainsys.warehouse.pojo.StorageUnits;
import com.chainsys.warehouse.service.StorageUnitsService;

@Controller
@RequestMapping("/storageunit")
public class StorageUnitsController {
    @Autowired
    StorageUnitsService suservice;
    @GetMapping("/list")
    public String getAllWarehouse(Model model) {
        List<StorageUnits> storage_unitslist = suservice.getStorageUnits();
        model.addAttribute("allstorageunits",storage_unitslist);
        return "list-stotageunits-form";
    }
    @GetMapping("/addform")
    public String showAddForm(Model model)
    {
        StorageUnits theStorageUnits=new StorageUnits();
        model.addAttribute("addstorageunits",theStorageUnits);
        return "add-storageunits-form";
    }
    @PostMapping("/add")
    public String addNewStorageUnits(@ModelAttribute("addstorageunits") StorageUnits thestorageunits) {
        suservice.save(thestorageunits);
        return "redirect:/storageunits/list";
    }
    @GetMapping("/updateform")
    public String showUpdateForm(@RequestParam("storageunits") int id,Model model)
    {
        StorageUnits thestorageunits=suservice.findById(id);
        model.addAttribute("updatestorageunits",thestorageunits);
        return "update-warehouse-form";
    }
    @PostMapping("/update")
    public String updateStorageUnits(@ModelAttribute("updatestorageunits") StorageUnits thestorageunits) {
        suservice.save(thestorageunits);
        return "redirect:/storageunits/list";
    }
    @GetMapping("/deletestorageunits")
    public String deleteStorageUnits(@RequestParam("storageunits") int id) {
        suservice.deleteById(id);
        return "redirect:/storageunits/list";
    }
    @GetMapping("/findstorageunitsById")
    public String findStorageUnitsById(@RequestParam("id") int id,Model model) {
        StorageUnits thestorageunits=suservice.findById(id);
        model.addAttribute("getStorageUnits",thestorageunits);
        return "find-storageunits-form";
    }
}