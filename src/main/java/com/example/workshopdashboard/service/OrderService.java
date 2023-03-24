package com.example.workshopdashboard.service;

import com.example.workshopdashboard.model.OrderModel;
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

    public List<OrderModel> getAllOrders(){
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

    public void deleteOrder(Long id){
        repo.deleteById(id);
    }
}
