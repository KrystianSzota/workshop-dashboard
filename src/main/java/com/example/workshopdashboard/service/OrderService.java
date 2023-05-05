package com.example.workshopdashboard.service;

import com.example.workshopdashboard.enums.Status;
import com.example.workshopdashboard.model.ClientModel;
import com.example.workshopdashboard.model.OrderModel;
import com.example.workshopdashboard.model.VehicleModel;
import com.example.workshopdashboard.repository.OrderRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Service
@Slf4j
public class OrderService {

    private final OrderRepository repo;
    private final ClientService client;
    private final VehicleService vehicle;

    public List<OrderModel> getAllOrders(String keyword){
        if (keyword != null) {
            return repo.search(keyword);
        }
        return repo.findAll();
    }

    public void addOrder(OrderModel order){
        repo.save(order);
    }

    public OrderModel getOrderById(Long id){
        Optional<OrderModel> order = repo.findById(id);
        if (order.isPresent()){
            return repo.findById(id).orElse(null);
        }else {
            log.info("brak");
            return null;
        }
    }

    public void saveEditOrder(OrderModel editOrder){
        repo.save(editOrder);
    }

    public void updateOrder(Long id, Integer clientModel, Integer vehicleModel, Integer vehicleOdometerReading,
                            String extentOfRepairs){
        OrderModel orderModel = repo.findById(id).orElseThrow();
        ClientModel newClient = client.getClientById(Long.valueOf(clientModel));
        orderModel.setClientModel(newClient);
        VehicleModel newVehicle = vehicle.getVehicleById(Long.valueOf(vehicleModel));
        orderModel.setVehicleModel(newVehicle);
        orderModel.setVehicleOdometerReading(vehicleOdometerReading);
        orderModel.setExtentOfRepairs(extentOfRepairs);

        repo.save(orderModel);
    }

    public void solveOrder(Long id, Status status){
        repo.updateOrderStatusById(id, status);
    }

}
