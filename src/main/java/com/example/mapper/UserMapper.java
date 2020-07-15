package com.example.mapper;

import com.example.pojo.User;

public interface UserMapper {
    public User findUser(String username);
    public void addUser(User user);
    public void recharge(User user);
    public void sellIdleItems(User user);
    public void sendLoveHeart(User user);
    public void buyIdleItems(User user);
}
