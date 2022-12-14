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

import com.chainsys.warehouse.model.Warehouse;
import com.chainsys.warehouse.model.WarehouseStorageUnitsDTO;
import com.chainsys.warehouse.service.WarehouseService;

@Controller
@RequestMapping("/warehouse")
public class WarehouseController {
    @Autowired
    WarehouseService warehouseService;
    private static final String WAREHOUSELIST = "redirect:/warehouse/list";
    @GetMapping("/list")
    
    public String getAllWarehouse(Model model) {
        List<Warehouse> warehouselist = warehouseService.getWarehouse();
        model.addAttribute("allwarehouse",warehouselist);
        return "list-warehouse-form";
    }
    @GetMapping("/addform")
    
    public String showAddForm(Model model)
    {
        Warehouse theWarehouse=new Warehouse();
        model.addAttribute("addwarehouse",theWarehouse);
        return "add-warehouse-form";
    }
    @PostMapping("/add")
    
    public String addNewWarehouse(@Valid @ModelAttribute("addwarehouse") Warehouse thewarehouse,Errors errors) {
    		if(errors.hasErrors()) {
    			return "add-warehouse-form";
    		}
    	warehouseService.save(thewarehouse);
        return WAREHOUSELIST;
    }
    @GetMapping("/updatewarehouseform")
    public String updateWarehouseForm() {
        return "update-warehouseid-form";
    }
    @GetMapping("/updateform")
    
    public String showUpdateForm(@RequestParam("id") int id,Model model)
    {
        Warehouse thewarehouse=warehouseService.findById(id);
        model.addAttribute("updatewarehouse",thewarehouse);
        return "update-warehouse-form";
    }
    @PostMapping("/update")
    public String updateWarehouse( @Valid @ModelAttribute("updatewarehouse") Warehouse theWarehouse,Errors errors) {
		if(errors.hasErrors()) {
			return "update-warehouse-form";
		}
    	warehouseService.save(theWarehouse);
        return WAREHOUSELIST;
    }
    @GetMapping("/deletewarehouseform")
    public String deleteWarehouseForm() {
        return "delete-warehouse-form";
    }
    
    @GetMapping("/deletewarehouse")
    public String deletewarehouse(@RequestParam("warehouseid") int id) {
    	warehouseService.deleteById(id);
        return WAREHOUSELIST;
    }
    @GetMapping("/getwarehouseform")
    public String getWarehouseForm() {
        return "get-warehouse-form";
    }
    @GetMapping("/findWarehouseById")
    
    public String findWarehouseById(@RequestParam("id") int id,Model model) {
        Warehouse theWarehouse=warehouseService.findById(id);
        model.addAttribute("getWarehouseid",theWarehouse);
        return "find-warehouse-id-form";
    }
    @GetMapping("/getwarehousestorageunits")
    
    public String getWarehouseStorageUnits(@RequestParam("id")int id,Model model) {
        WarehouseStorageUnitsDTO warehoueStorageUnits = warehouseService.getWarehouseStorageUnits(id);
        model.addAttribute("getwarehouse",warehoueStorageUnits.getWarehouse());
        model.addAttribute("storageUnitslist",warehoueStorageUnits.getStorageUnitList());
        return "list-warehouse-storageunits";
}
}