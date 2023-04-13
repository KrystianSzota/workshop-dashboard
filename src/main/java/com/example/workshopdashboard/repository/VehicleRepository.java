package com.example.workshopdashboard.repository;

import com.example.workshopdashboard.model.VehicleModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
public interface VehicleRepository extends JpaRepository<VehicleModel, Long> {

    @Modifying
    @Transactional
    @Query("UPDATE VehicleModel v SET v.brand = :brand, v.model =:model, v.yearOfProduction =:year_of_production, v.capacity =:capacity, v.registrationNumber =:registration_number WHERE v.id = :id")
    int updateVehicleById(@Param("id") Long id, @Param("brand") String brand, @Param("model") String model, @Param("year_of_production") Integer yearOfProduction, @Param("capacity") String capacity, @Param("registration_number") String registrationNumber);
}
