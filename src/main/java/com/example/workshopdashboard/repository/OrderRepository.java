package com.example.workshopdashboard.repository;

import com.example.workshopdashboard.enums.Status;
import com.example.workshopdashboard.model.OrderModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<OrderModel, Long> {

    @Modifying
    @Transactional
    @Query("UPDATE OrderModel o SET o.clientModel =:client_id,  o.vehicleModel =:vehicle_id, o.vehicleOdometerReading =:vehicle_odometer_reading, " +
            "o.extentOfRepairs =:extent_of_repairs WHERE o.id =:id")
    int updateOrderById(@Param("id") Long id, @Param("client_id") Integer clientModel, @Param("vehicle_id") Integer vehicleModel,
                        @Param("vehicle_odometer_reading") Integer vehicleOdometerReading, @Param("extent_of_repairs") String extentOfRepairs);

    @Modifying
    @Transactional
    @Query("UPDATE OrderModel s SET s.status =:status WHERE s.id =:id")
    int updateOrderStatusById(@Param("id") Long id, @Param("status") Status status);

//    @Query("SELECT f FROM OrderModel f WHERE CONCAT(f.clientModel, ' ', f.vehicleModel, ' ', f.extentOfRepairs) LIKE %?1%")
//    public List<OrderModel> search(String keyword);

    @Query("SELECT f FROM OrderModel f JOIN f.clientModel c JOIN f.vehicleModel v WHERE CONCAT(c.firstName, ' ', c.lastName, ' ', v.brand, ' ', v.model, ' ', v.registrationNumber, ' ', f.extentOfRepairs) LIKE %?1%")
    public List<OrderModel> search(String keyword);

}
