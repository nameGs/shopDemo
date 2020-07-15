package com.example.service;

import com.example.pojo.User;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

public interface UserService {
	public User findUser(String username);
	public void addUser(User user);
	public void recharge(User user);
	public void sellIdleItems(User user);
	public void sendLoveHeart(User user);
	public void buyIdleItems(User user);
}
