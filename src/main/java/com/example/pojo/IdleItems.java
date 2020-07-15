package com.example.pojo;

import org.apache.ibatis.type.Alias;

import java.io.Serializable;

@Alias("idleItems")
public class IdleItems implements Serializable {
    private int id;
    private int userId;
    private String itemName;
    private float orPrice;
    private float nowPrice;
    private String idleDescribe;
    private String pictureName;
    private int selling;

    public int getSelling() {
        return selling;
    }

    public void setSelling(int selling) {
        this.selling = selling;
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

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public float getOrPrice() {
        return orPrice;
    }

    public void setOrPrice(float orPrice) {
        this.orPrice = orPrice;
    }

    public float getNowPrice() {
        return nowPrice;
    }

    public void setNowPrice(float nowPrice) {
        this.nowPrice = nowPrice;
    }

    public String getIdleDescribe() {
        return idleDescribe;
    }

    public void setIdleDescribe(String idleDescribe) {
        this.idleDescribe = idleDescribe;
    }

    @Override
    public String toString() {
        return "IdleItems{" +
                "id=" + id +
                ", userId=" + userId +
                ", itemName='" + itemName + '\'' +
                ", orPrice=" + orPrice +
                ", nowPrice=" + nowPrice +
                ", idleDescribe='" + idleDescribe + '\'' +
                 ", pictureName='"+ pictureName + '}';
    }
}
