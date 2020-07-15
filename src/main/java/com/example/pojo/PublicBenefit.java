package com.example.pojo;

import org.apache.ibatis.type.Alias;

import java.io.Serializable;

@Alias("publicBenefit")
public class PublicBenefit implements Serializable {
    private int id;
    private double moneyNumber;
    private int userId;
    private String userName;
    private String gender;
    private int age;
    private String pictureName;
    private int times;
    private String illnessDescribe;
    private float needMoney;

    public float getNeedMoney() {
        return needMoney;
    }

    public void setNeedMoney(float needMoney) {
        this.needMoney = needMoney;
    }

    public int getTimes() {
        return times;
    }

    public void setTimes(int times) {
        this.times = times;
    }

    public String getIllnessDescribe() {
        return illnessDescribe;
    }

    public void setIllnessDescribe(String illnessDescribe) {
        this.illnessDescribe = illnessDescribe;
    }

    public String getPictureName() {
        return pictureName;
    }

    public void setPictureName(String pictureName) {
        this.pictureName = pictureName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getMoneyNumber() {
        return moneyNumber;
    }

    public void setMoneyNumber(double moneyNumber) {
        this.moneyNumber = moneyNumber;
    }


    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "PublicBenefit{" +
                "id=" + id +
                ", moneyNumber=" + moneyNumber +
                ", userId=" + userId +
                ", userName='" + userName + '\'' +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", pictureName='" + pictureName + '\'' +
                ", times=" + times +
                ", illnessDescribe='" + illnessDescribe + '\'' +
                ", needMoney=" + needMoney +
                '}';
    }
}
