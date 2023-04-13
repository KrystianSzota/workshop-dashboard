package com.example.workshopdashboard.repository;


import com.example.workshopdashboard.model.ClientModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
public interface ClientRepository extends JpaRepository<ClientModel, Long> {

    @Modifying
    @Transactional
    @Query("UPDATE ClientModel c SET c.firstName = :first_name, c.lastName =:last_name, c.zipCode =:zip_code, c.city =:city, " +
            "c.street =:street, c.buildingNumber =:building_number, c.apartment =:apartment, c.phoneNumber =:phone_number, " +
            "c.email =:email WHERE c.id = :id")
    int updateEmployeeById(@Param("id") Long id, @Param("first_name") String firstName, @Param("last_name") String lastName,
                           @Param("zip_code") String zipCode, @Param("city") String city, @Param("street") String street,
                           @Param("building_number") String buildingNumber, @Param("apartment") String apartment,
                           @Param("phone_number") String phoneNumber, @Param("email") String email);
}
