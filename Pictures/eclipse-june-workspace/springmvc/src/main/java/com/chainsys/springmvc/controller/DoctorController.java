package com.chainsys.springmvc.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.springmvc.dao.EmployeeDao;
import com.chainsys.springmvc.pojo.Appointment;
import com.chainsys.springmvc.pojo.Doctor;
import com.chainsys.springmvc.pojo.DoctorAppointmentsDTO;
import com.chainsys.springmvc.pojo.Employee;
import com.chainsys.springmvc.repository.DoctorRepository;
import com.chainsys.springmvc.service.DoctorService;

@Controller
@RequestMapping("/doctor")
public class DoctorController {
    @Autowired
    DoctorService drservice;
    @GetMapping("/list")
    public String getAllDoctors(Model model) {
        List<Doctor> doclist = drservice.getDoctors();
        model.addAttribute("alldoctors",doclist);
        return "list-doctors";
    }
    @GetMapping("/addform")
    public String showAddForm(Model model)
    {
        Doctor theDoctor=new Doctor();
        model.addAttribute("adddoctor",theDoctor);
        return "add-doctor-form";
    }
    @PostMapping("/add")
    public String addNewDoctors(@ModelAttribute("adddoctor") Doctor thedoctor) {
        drservice.save(thedoctor);
        return "redirect:/doctor/list";
    }
    @GetMapping("/updateform")
    public String showUpdateForm(@RequestParam("docid") int id,Model model)
    {
        Doctor theDoctor=drservice.findById(id);
        model.addAttribute("updatedoctor",theDoctor);
        return "update-doctor-form";
    }
    @PostMapping("/updatedoc")
    public String updateDoctors(@ModelAttribute("updatedoctor") Doctor theDoctor) {
        drservice.save(theDoctor);
        return "redirect:/doctor/list";
    }
    @GetMapping("/deletedoctor")
    public String deleteDoctors(@RequestParam("docid") int id) {
        drservice.deleteById(id);
        return "redirect:/doctor/list";
    }
    @GetMapping("/findDoctorById")
    public String findDoctorById(@RequestParam("docid") int id,Model model) {
        Doctor theDoctor=drservice.findById(id);
        model.addAttribute("findDoctorById",theDoctor);
        return "find-doctor-by-id-form";
    }
    @GetMapping("/getdocapp")
    public String getAppointments(@RequestParam("id") int id,Model model)
    {
        DoctorAppointmentsDTO dto=drservice.getDoctorAndAppointments(id);
        model.addAttribute("getdoc", dto.getDoctor());
        model.addAttribute("applist",dto.getAppointments() );
        return "list-doctor-appointments";
    }
    @GetMapping("/trans")
    public void testTransaction(@RequestParam("id") int id)
    {
        DoctorAppointmentsDTO dto=new DoctorAppointmentsDTO();
        Doctor dr=new Doctor();
        dr.setDoc_Id(id);
        dr.setDoc_name("Vetri");
        Date dt=new Date(92,7,14);
        dr.setDob(dt);
        dr.setCity("madurai");
        dr.setPhonenumber(374383747);
        dr.setSpeciality("heart");
        dr.setStandard_fees(700);
        dto.setDoctor(dr);
        List<Appointment> applist=new ArrayList<Appointment>();
        for (int i = 0; i<=2; i++) {
            Appointment app = new Appointment();
            app.setApp_id(i);
            Date appdt = new Date(22, 7, 25);
            app.setApp_date(appdt);
            app.setDoctor_Id(id);
            app.setPatient_name("Vetri");
            app.setFees_collected(i * 500);
            dto.addAppointment(app);
    }
        drservice.getDoctorAndAppointments(dto);
        System.out.println("Successfully completed");
}
}