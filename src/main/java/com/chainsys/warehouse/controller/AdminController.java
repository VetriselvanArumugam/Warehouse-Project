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
import com.chainsys.warehouse.model.Warehouse;
import com.chainsys.warehouse.service.AdminService;

@Controller
@RequestMapping("/")
public class AdminController {
	@Autowired
	AdminService adminService;
	@GetMapping("/admin")
    public String webApp(Model m) {
        String message = "Hello World, Created the website on this Mr. @ vetriselvan ";
        m.addAttribute("message", message);
        return "index";
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
    public String checkingAccess(@ModelAttribute("admin") Admin user) {
        Admin admin = adminService.getUserNamePassword(user.getUserName(), user.getPassword());
        if (admin!= null){

            return "redirect:/index1";
        } else
            return "invalid-user-error";
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
        return "redirect:/list";
}
    @GetMapping("/list")
    public String getAllAdmin(Model model) {
        List<Admin> adminlist = adminService.getAdmin();
        model.addAttribute("alladmin",adminlist);
        return "list-admin-form";
    }
}
