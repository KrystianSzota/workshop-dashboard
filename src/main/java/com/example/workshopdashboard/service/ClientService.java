package com.example.workshopdashboard.service;

import com.example.workshopdashboard.model.ClientModel;
import com.example.workshopdashboard.repository.ClientRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
@Service
@Slf4j
public class ClientService {

    private final ClientRepository repo;

    public List<ClientModel> getAllClients(){
        return repo.findAll();
    }

    public void addClient(ClientModel client){
        repo.save(client);
    }

    public ClientModel getClientById(Long id){
        Optional<ClientModel> client = repo.findById(id);
        if (client.isPresent()){
            return repo.findById(id).orElse(null);
        }else {
            log.info("brak");
            return null;
        }
    }

    public void saveEditClient(ClientModel editClient){
        repo.save(editClient);
    }

    public void updateClient(Long id, String firstName, String lastName, String zipCode, String city, String street, String buildingNumber, String apartment, String phoneNumber, String email){
        repo.updateEmployeeById(id, firstName, lastName, zipCode, city, street, buildingNumber, apartment, phoneNumber, email);
    }

}