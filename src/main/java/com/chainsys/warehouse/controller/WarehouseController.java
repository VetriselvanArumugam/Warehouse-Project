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

import com.chainsys.warehouse.pojo.Warehouse;
import com.chainsys.warehouse.service.WarehouseService;

@Controller
@RequestMapping("/warehouse")
public class WarehouseController {
    @Autowired
    WarehouseService wrservice;
    @GetMapping("/list")
    public String getAllWarehouse(Model model) {
        List<Warehouse> warehouselist = wrservice.getWarehouse();
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
    public String addNewWarehouse(@ModelAttribute("addwarehouse") Warehouse thewarehouse) {
        wrservice.save(thewarehouse);
        return "redirect:/warehouse/list";
    }
    @GetMapping("/updateform")
    public String showUpdateForm(@RequestParam("id") int id,Model model)
    {
        Warehouse thewarehouse=wrservice.findById(id);
        model.addAttribute("updatewarehouse",thewarehouse);
        return "update-warehouse-form";
    }
    @PostMapping("/update")
    public String updateWarehouse(@ModelAttribute("updatewarehouse") Warehouse theWarehouse) {
        wrservice.save(theWarehouse);
        return "redirect:/warehouse/list";
    }
    @GetMapping("/deletewarehouse")
    public String deletewarehouse(@RequestParam("warehouseid") int id) {
        wrservice.deleteById(id);
        return "redirect:/warehouse/list";
    }
    @GetMapping("/findWarehouseById")
    public String findWarehouseById(@RequestParam("id") int id,Model model) {
        Warehouse theWarehouse=wrservice.findById(id);
        model.addAttribute("getWarehouseid",theWarehouse);
        return "find-warehouse-id-form";
    }
}