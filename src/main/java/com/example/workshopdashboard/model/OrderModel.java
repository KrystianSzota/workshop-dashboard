package com.example.workshopdashboard.model;

import com.example.workshopdashboard.enums.Status;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDateTime;
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
    @CreationTimestamp
    @Column(name = "order_registration_date")
    private Date orderRegistrationDate;

    @DateTimeFormat(pattern = "yy-MM-dd")
    @Column(name = "order_close_date")
    private LocalDateTime orderCloseDate;

    @Column(name = "status", nullable = false)
    @Enumerated(EnumType.STRING)
    private Status status = Status.W_REALIZACJI;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private ClientModel clientModel;

    @ManyToOne
    @JoinColumn(name = "vehicle_id")
    private VehicleModel vehicleModel;
}
