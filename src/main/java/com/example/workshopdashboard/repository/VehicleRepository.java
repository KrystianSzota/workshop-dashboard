package com.example.workshopdashboard.repository;

import com.example.workshopdashboard.model.VehicleModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VehicleRepository extends JpaRepository<VehicleModel, Long> {
}
