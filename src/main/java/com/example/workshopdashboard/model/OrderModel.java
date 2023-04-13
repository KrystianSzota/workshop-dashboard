package com.example.workshopdashboard.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "order_tab")
public class OrderModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "vehicle_odometer_reading")
    private Integer vehicleOdometerReading;

    @Column(name = "extent_of_repairs")
    private String extentOfRepairs;

    @DateTimeFormat(pattern = "yy-MM-dd")
    @Column(name = "order_registration_date")
    private Date orderRegistrationDate;

    @DateTimeFormat(pattern = "yy-MM-dd")
    @Column(name = "order_close_date")
    private Date orderCloseDate;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private ClientModel clientModel;

    @ManyToOne
    @JoinColumn(name = "vehicle_id")
    private VehicleModel vehicleModel;
}
