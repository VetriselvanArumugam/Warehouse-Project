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

import com.chainsys.warehouse.model.Packages;
import com.chainsys.warehouse.service.PackagesService;

@Controller
@RequestMapping("/packages")
public class PackagesController {
    @Autowired
    PackagesService pservice;
    @GetMapping("/list")
    public String getAllPackages(Model model) {
        List<Packages> packageslist = pservice.getPackages();
        model.addAttribute("allpackages",packageslist);
        return "list-packages-form";
    }
    @GetMapping("/addform")
    public String showAddForm(Model model)
    {
        Packages thepackages=new Packages();
        model.addAttribute("addpackages",thepackages);
        return "add-packages-form";
    }
    @PostMapping("/add")
    public String addNewPackages(@ModelAttribute("addpackages") Packages thepackages) {
        pservice.save(thepackages);
        return "redirect:/packages/list";
    }
    @GetMapping("/updateform")
    public String showUpdateForm(@RequestParam("id") int id,Model model)
    {
        Packages thepackages=pservice.findById(id);
        model.addAttribute("updatepackages",thepackages);
        return "update-packages-form";
    }
    @PostMapping("/update")
    public String updatePackages(@ModelAttribute("updatepackages") Packages thepackages) {
        pservice.save(thepackages);
        return "redirect:/packages/list";
    }
    @GetMapping("/deletepackages")
    public String deletepackages(@RequestParam("id") int id) {
        pservice.deleteById(id);
        return "redirect:/packages/list";
    }
    @GetMapping("/findpackagesById")
    public String findpackagesById(@RequestParam("id") int id,Model model) {
        Packages thepackages=pservice.findById(id);
        model.addAttribute("getpackagesid",thepackages);
        return "find-packages-id-form";
    }
}