package com.example.demo;

import java.io.Serializable;

public class Person  implements Serializable {
    String name;
    String email;

    public Person(){
    }

    public String getName(){
        return name;
    }

    public void setName (String name){
        this.name = name;
    }

    public String getEmail(){
        return email;
    }

    public void setEmail (String email){
        this.email = email;
    }
}
