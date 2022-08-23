package com.chainsys.warehouse.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.warehouse.model.Admin;
import com.chainsys.warehouse.service.AdminService;

@Controller
@RequestMapping("/")
public class AdminController {
	@Autowired
	AdminService adminService;
	 private static final String ADMINLIST =  "redirect:/list";
	@GetMapping("/admin")
    public String webApp(Model m) {
        return "index";
    }
	@GetMapping("/home")
    public String homeIndex(Model m) {
        return "home";
    }
	@GetMapping("/warehouseindex")
	public String warehouseIndex() {
		return "warehouse-index";
	}
	@GetMapping("/storageunitsindex")
	public String storageUnitsIndex() {
		return "storageunits-index";
	}

	@GetMapping("/warehousepackagesindex")
	public String warehousePackagesIndex() {
		return "warehousepackages-index";
	}
	@GetMapping("/storagedetailsindex")
	public String storageDetailsIndex() {
		return "storagedetails-index";
	}
	@GetMapping("/packagedeliverydetailsindex")
	public String packageDeliveryDetailsIndex() {
		return "packagedeliverydetails-index";
	}
	
	@GetMapping("/index1")
    public String webAppp(Model m) {
        String message = "Hello World, Created the website on this Mr. @ vetriselvan ";
        m.addAttribute("message", message);
        return "index1";
    }
	@GetMapping("/adminlogin")
    public String adminaccessform(Model model) {
        Admin admin = new Admin();
        model.addAttribute("admin", admin);
        return "admin-login";
    }                   

    @PostMapping("/checkadminlogin")
    public String checkingAccess(@ModelAttribute("admin") Admin user,Model model) {
        Admin admin = adminService.getUserNamePassword(user.getUserName(), user.getPassword());
        if (admin!= null){

            return "redirect:/home";
        } else {
            model.addAttribute("result", "Invalid username and password");
    }
    return "admin-login";
}
    @GetMapping("/addadmin")
  
    public String showAddForm(Model model)
    {
        Admin theAdmin=new Admin();
        model.addAttribute("addadmin",theAdmin);
        return "add-admin-form";
    }
    @PostMapping("/add")
    
    public String addNewAdmin(@ModelAttribute("addadmin") Admin theAdmin) {
    	adminService.save(theAdmin);
        return ADMINLIST;
}
    @GetMapping("/list")
    
    public String getAllAdmin(Model model) {
        List<Admin> adminlist = adminService.getAdmin();
        model.addAttribute("alladmin",adminlist);
        return "list-admin-form";
    }

    @GetMapping("/about")
    
    public String getAbout(Model model) {
        List<Admin> adminlist = adminService.getAdmin();
        return "about";
    }
}
