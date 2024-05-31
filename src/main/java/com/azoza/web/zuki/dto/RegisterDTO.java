package com.azoza.web.zuki.dto;

public class RegisterDTO extends AuthDTO{
    private String firstname;
    private String lastname;
    private String mobile;
    private String city;
    private String addressline01;
    private String addressline02;

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddressline01() {
        return addressline01;
    }

    public void setAddressline01(String addressline01) {
        this.addressline01 = addressline01;
    }

    public String getAddressline02() {
        return addressline02;
    }

    public void setAddressline02(String addressline02) {
        this.addressline02 = addressline02;
    }
}
