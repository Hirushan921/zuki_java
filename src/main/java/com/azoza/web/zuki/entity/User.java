package com.azoza.web.zuki.entity;

import jakarta.persistence.*;

@Entity
public class User extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String firstname;
    private String lastname;
    @Column(unique = true)
    private String email;
    private String email_verified_at;
    private String verification_code;
    private String mobile;
    private String password;
    private String gender;
    private String addressline01;
    private String addressline02;
    private String city;
    private String district;
    private boolean active;

    @Enumerated(value = EnumType.STRING)
    @Column(name="user_type")
    private UserType userType = UserType.USER;

    public User(){

    }

    public User(Long id, String firstname, String lastname, String email,String email_verified_at, String verification_code, String mobile, String password, String gender, String addressline01, String addressline02, String city, String district, boolean active, UserType userType) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.email_verified_at = email_verified_at;
        this.verification_code = verification_code;
        this.mobile = mobile;
        this.password = password;
        this.gender = gender;
        this.addressline01 = addressline01;
        this.addressline02 = addressline02;
        this.city = city;
        this.district = district;
        this.active = active;
        this.userType = userType;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getEmail_verified_at() {
        return email_verified_at;
    }

    public void setEmail_verified_at(String email_verified_at) {
        this.email_verified_at = email_verified_at;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
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

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    public String getVerification_code() {
        return verification_code;
    }

    public void setVerification_code(String verification_code) {
        this.verification_code = verification_code;
    }
}
