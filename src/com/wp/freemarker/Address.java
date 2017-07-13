package com.wp.freemarker;

/**
 * Copyright © 2017 DHCC. All rights reserved.
 * <p>
 * Project: TestFreemarker
 * Package: com.wp.freemarker
 * Created by WangPeng on 2017/7/13.
 */
public class Address {
    private String country;
    private String city;
    public String getCountry() {
        return country;
    }
    public void setCountry(String country) {
        this.country = country;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
    public Address(String country, String city) {
        super();
        this.country = country;
        this.city = city;
    }
    public Address() {
    }
}
