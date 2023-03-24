package com.example.workshopdashboard.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class OrderModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "client_id")
    private Integer clientId;

    @Column(name = "vehicle_id")
    private Integer vehicleId;

    @Column(name = "vehicle_odometer_reading")
    private Integer vehicleOdometerReading;

    @Column(name = "extent_of_repairs")
    private String extentOfRRepairs;

}
