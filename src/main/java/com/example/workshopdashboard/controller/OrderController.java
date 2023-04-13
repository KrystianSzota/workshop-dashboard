package com.example.workshopdashboard.controller;

import com.example.workshopdashboard.model.ClientModel;
import com.example.workshopdashboard.model.OrderModel;
import com.example.workshopdashboard.service.ClientService;
import com.example.workshopdashboard.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class OrderController {

    private final OrderService orderService;
    private final ClientService clientService;

    @GetMapping({"/", "index"})
    public String getAllOrders(Model model){
        List<OrderModel> list = orderService.getAllOrders();
        model.addAttribute("orderModel", list);
        return "index";
    }

    @GetMapping("/newOrder")
    public String getAddOrder(Model model){
        List<ClientModel> list = clientService.getAllClients();
        model.addAttribute("clientModel", list);
        return "index";
    }


}
