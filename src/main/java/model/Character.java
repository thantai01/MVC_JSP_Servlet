package model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Character {
    private int id;
    private String name;
    private String age;
    private String addressCity;
    private String imgPath;

    public Character(int id,String name, String age, String addressCity, String imgPath) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.addressCity = addressCity;
        this.imgPath = imgPath;
    }

    public Character() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getAddressCity() {
        return addressCity;
    }

    public void setAddressCity(String addressCity) {
        this.addressCity = addressCity;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
