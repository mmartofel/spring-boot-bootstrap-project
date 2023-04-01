package com.acme.springbootbootstrapproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

public class PersonController {
    
    @Autowired
    private PersonRepository repository;

    @GetMapping(value="/persons")
    public List<Person> getAllPersons() {
        return repository.findAll();
    }
    
}
