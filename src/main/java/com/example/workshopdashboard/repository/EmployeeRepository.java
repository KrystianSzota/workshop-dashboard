package com.example.workshopdashboard.repository;

import com.example.workshopdashboard.model.EmployeeModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
public interface EmployeeRepository extends JpaRepository<EmployeeModel, Long> {

    @Modifying
    @Transactional
    @Query("UPDATE EmployeeModel e SET e.firstName = :first_name, e.lastName =:last_name, e.email =:email WHERE e.id = :id")
    int updateEmployeeById(@Param("id") Long id, @Param("first_name") String firstName, @Param("last_name") String lastName, @Param("email") String email);
}
