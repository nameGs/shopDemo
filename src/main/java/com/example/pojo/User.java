package com.example.pojo;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;
@Alias("user")
public class User implements Serializable{
	private int id;
    private String username;
    private String password;
    private float money;
    private int loveHeart;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public float getMoney() {
        return money;
    }

    public void setMoney(float money) {
        this.money = money;
    }

    public int getLoveHeart() {
        return loveHeart;
    }

    public void setLoveHeart(int loveHeart) {
        this.loveHeart = loveHeart;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", money=" + money +
                ", loveHeart=" + loveHeart +
                '}';
    }
}
