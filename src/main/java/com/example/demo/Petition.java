package com.example.demo;

import java.io.Serializable;
import java.util.ArrayList;

public class Petition  implements Serializable {
    String title;
    String description;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    int id;

    ArrayList<Person> personList = new ArrayList<Person>();

    public Petition(){
    }

    public String getTitle(){
        return title;
    }

    public void setTitle (String title){
        this.title = title;
    }

    public String getDescription(){
        return description;
    }

    public void setDescription (String description) {
        this.description = description;
    }
}

