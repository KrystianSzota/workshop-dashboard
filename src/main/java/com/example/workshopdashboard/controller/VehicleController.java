package com.example.workshopdashboard.controller;

import com.example.workshopdashboard.model.EmployeeModel;
import com.example.workshopdashboard.model.VehicleModel;
import com.example.workshopdashboard.service.VehicleService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class VehicleController {

    private final VehicleService vehicleService;

    @GetMapping("/vehicles")
    public String getAllVehicles(Model model){
        List<VehicleModel> list = vehicleService.getAllVehicles();
        model.addAttribute("vehicleModel", list);
        return "vehicles/allVehicles";
    }

    @GetMapping("/addVehicle")
    public String addVehicle(){
        return "/vehicles/addVehicle";
    }

    @PostMapping("/addVehicle")
    public RedirectView postAddVehicle(VehicleModel vehicle){
        vehicleService.addVehicle(vehicle);
        return new RedirectView("/vehicles");
    }

    @GetMapping("/editVehicle/{id}")
    public String getEditVehicle(@PathVariable("id") Long id, Model model){
        VehicleModel vehicle = vehicleService.getVehicleById(id);
        model.addAttribute("vehicleModel", vehicle);
        return "/vehicles/editVehicle";
    }

    @PostMapping("/addVehicle/{id}")
    public RedirectView postEditVehicle(VehicleModel editVehicle){
        vehicleService.saveEditVehicle(editVehicle);
        return new RedirectView("/editVehicle/{id}");
    }
}
