package com.example.workshopdashboard.service;

import com.example.workshopdashboard.model.EmployeeModel;
import com.example.workshopdashboard.repository.EmployeeRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Service
@Slf4j
public class EmployeeService {

    private final EmployeeRepository repo;

    public List<EmployeeModel> getAllEmployees(){
        return repo.findAll();
    }

    public void addEmployee(EmployeeModel employee){
        repo.save(employee);
    }

    public EmployeeModel getEmployeeById(Long id){
        Optional<EmployeeModel> employee = repo.findById(id);
        if (employee.isPresent()){
            return repo.findById(id).orElse(null);
        }else {
            log.info("brak");
            return null;
        }
    }

    public void saveEditEmployee(EmployeeModel editEmployee){
        repo.save(editEmployee);
    }

    public void deleteEmployee(Long id){
        repo.deleteById(id);
    }
}
