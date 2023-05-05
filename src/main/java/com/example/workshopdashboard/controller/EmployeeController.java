package com.example.workshopdashboard.controller;

import com.example.workshopdashboard.model.EmployeeModel;
import com.example.workshopdashboard.service.EmployeeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class EmployeeController {

    private final EmployeeService employeeService;

    @GetMapping("/employees")
    public String getAllEmployees(Model model){
        List<EmployeeModel> list = employeeService.getAllEmployees();
        model.addAttribute("employeeModel", list);
        return "employees/allEmployees";
    }

    @GetMapping("/addEmployee")
    public String addEmployee(){
        return "/employees/addEmployee";
    }

    @PostMapping("/addEmployee")
    public RedirectView postAddEmployee(EmployeeModel employee){
        employeeService.addEmployee(employee);
        return new RedirectView("/employees");
    }

    @GetMapping("/employees/remove/{id}")
    public RedirectView deleteEmployee(@PathVariable("id") Long id){
        employeeService.deleteEmployee(id);
        return new RedirectView("/employees");
    }

    @GetMapping("/editEmployee/{id}")
    public String getEditEmployee(@PathVariable("id") Long id, Model model){
        EmployeeModel employee = employeeService.getEmployeeById(id);
        model.addAttribute("employeeModel", employee);
        return "/employees/editEmployee";
    }

    @PostMapping("/addEmployee/{id}")
    public RedirectView postEditEmployee(EmployeeModel editEmployee){
        employeeService.saveEditEmployee(editEmployee);
        return new RedirectView("/editEmployee/{id}");
    }

    @PostMapping("/editEmployee/{id}")
    public RedirectView postDeleteEmployee(@PathVariable("id") Long id, String firstName, String lastName, String email){
        employeeService.updateEmployee(id, firstName, lastName, email);
        return new RedirectView(("/employees"));
    }


//    @GetMapping("/editEmployee/{id}")
//    public String retriveEmployee(@PathVariable int id) {
//        String user = employeeService.findOne(id);
//        if(user==null)
//            throw new EmployeeNotFoundException("id: "+ id);
//        return user;
//    }
}
