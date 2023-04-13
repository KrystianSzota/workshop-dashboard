package com.example.workshopdashboard.controller;

import com.example.workshopdashboard.model.ClientModel;
import com.example.workshopdashboard.model.VehicleModel;
import com.example.workshopdashboard.service.ClientService;
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
public class ClientController {

    private final ClientService clientService;

    @GetMapping("/clients")
    public String getAllClients(Model model){
        List<ClientModel> list = clientService.getAllClients();
        model.addAttribute("clientModel", list);
        return "clients/allClients";
    }

    @GetMapping("/addClient")
    public String addVehicle(){
        return "/clients/addClient";
    }

    @PostMapping("/addClient")
    public RedirectView postAddClient(ClientModel client){
        clientService.addClient(client);
        return new RedirectView("/clients");
    }

    @GetMapping("/editClient/{id}")
    public String getEditClient(@PathVariable("id") Long id, Model model){
        ClientModel client = clientService.getClientById(id);
        model.addAttribute("clientModel", client);
        return "/clients/editClient";
    }

    @PostMapping("/addClient/{id}")
    public RedirectView postEditClient(ClientModel editClient){
        clientService.saveEditClient(editClient);
        return new RedirectView("/editClient/{id}");
    }

    @PostMapping("/editClient/{id}")
    public RedirectView postDeleteClient(@PathVariable("id") Long id, String firstName, String lastName, String zipCode,
                                         String city, String street, String buildingNumber, String apartment, String phoneNumber, String email){
        clientService.updateClient(id, firstName, lastName, zipCode, city, street, buildingNumber, apartment, phoneNumber, email);
        return new RedirectView(("/clients"));
    }
}
