package com.example.workshopdashboard.service;

import com.example.workshopdashboard.model.VehicleModel;
import com.example.workshopdashboard.repository.VehicleRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Service
@Slf4j
public class VehicleService {

    private final VehicleRepository repo;

    public List<VehicleModel> getAllVehicles(){
        return repo.findAll();
    }

    public void addVehicle(VehicleModel vehicle){
        repo.save(vehicle);
    }

    public VehicleModel getVehicleById(Long id){
        Optional<VehicleModel> vehicle = repo.findById(id);
        if (vehicle.isPresent()){
            return repo.findById(id).orElse(null);
        }else {
            log.info("brak");
            return null;
        }
    }

    public void saveEditVehicle(VehicleModel editVehicle){
        repo.save(editVehicle);
    }

    public void updateVehicle(Long id, String brand, String model, Integer yearOfProduction, String capacity, String registrationNumber){
        repo.updateVehicleById(id, brand, model, yearOfProduction, capacity, registrationNumber);
    }
}