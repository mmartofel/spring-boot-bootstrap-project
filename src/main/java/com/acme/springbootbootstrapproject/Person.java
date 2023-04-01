package com.acme.springbootbootstrapproject;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;

@Entity
@Table(name = "person_data")
public class Person {
    
    @Id
    public Integer id;
    
    @Column(length = 30)
    public String name;

    @Column(length = 50)
    public String surname;

    @Column(length = 11)
    public String pesel;

}
