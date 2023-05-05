package com.example.workshopdashboard.controller;

import com.example.workshopdashboard.enums.Status;
import com.example.workshopdashboard.model.ClientModel;
import com.example.workshopdashboard.model.OrderModel;
import com.example.workshopdashboard.model.VehicleModel;
import com.example.workshopdashboard.service.ClientService;
import com.example.workshopdashboard.service.OrderService;
import com.example.workshopdashboard.service.VehicleService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;


import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class OrderController {

    private final OrderService orderService;
    private final ClientService clientService;
    private final VehicleService vehicleService;


    @GetMapping({"/", "index"})
    public String getAllOrders(Model model, @Param("keyword") String keyword){
        List<OrderModel> list = orderService.getAllOrders(keyword);
        model.addAttribute("orderModel", list);
        model.addAttribute("keyword", keyword);
        return "index";
    }

    @GetMapping("/addOrder")
    public String addOrder(Model model){
        List<ClientModel> clientList = clientService.getAllClients();
        model.addAttribute("clientModel", clientList);
        List<VehicleModel> vehicleList = vehicleService.getAllVehicles();
        model.addAttribute("vehicleModel", vehicleList);
        return "/orders/addOrder";
    }

    @PostMapping("/addOrder")
    public RedirectView postAddOrder(OrderModel order){
        orderService.addOrder(order);
        return new RedirectView("/index");
    }

    @GetMapping("/previewOrder/{id}")
    public String previewOrder(@PathVariable("id") Long id, Model model){
        OrderModel order = orderService.getOrderById(id);
        model.addAttribute("orderModel", order);
        return "/orders/previewOrder";
    }

    @GetMapping("/editOrder/{id}")
    public String getEditOrder(@PathVariable("id") Long id, Model model){
        OrderModel order = orderService.getOrderById(id);
        model.addAttribute("orderModel", order);
        List<ClientModel> clientList = clientService.getAllClients();
        model.addAttribute("clientModel", clientList);
        List<VehicleModel> vehicleList = vehicleService.getAllVehicles();
        model.addAttribute("vehicleModel", vehicleList);
        return "/orders/editOrder";
    }

    @PostMapping("addOrder/{id}")
    public RedirectView postEditOrder(OrderModel editOrder){
        orderService.saveEditOrder(editOrder);
        return new RedirectView("/editOrder/{id}");
    }

    @PostMapping("/editOrder/{id}")
    public RedirectView postDeleteOrder(@PathVariable("id") Long id, Integer clientModel, Integer vehicleModel, Integer vehicleOdometerReading,
                                        String extentOfRepairs){
        orderService.updateOrder(id, clientModel, vehicleModel, vehicleOdometerReading, extentOfRepairs);
        return new RedirectView(("/previewOrder/{id}"));
    }

    @GetMapping("/previewOrder/done/{id}")
    public RedirectView solveOrder(@PathVariable("id") Long id){
        OrderModel order = orderService.getOrderById(id);
        order.setStatus(Status.ZAKONCZONE);
        order.setOrderCloseDate(LocalDateTime.now());
        orderService.saveEditOrder(order);
        return new RedirectView("/index");
    }

}
