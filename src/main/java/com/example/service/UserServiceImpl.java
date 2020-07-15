package com.example.service;

import com.example.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.example.pojo.User;

@Service
@Component
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	public User findUser(String username) {
		return userMapper.findUser(username);
	}

	public void addUser(User user) {
		userMapper.addUser(user);
	}

	public void recharge(User user) {
		userMapper.recharge(user);
	}

	public void sellIdleItems(User user) {
		userMapper.sellIdleItems(user);
	}

	public void sendLoveHeart(User user) {
		userMapper.sendLoveHeart(user);
	}

	public void buyIdleItems(User user) {
		userMapper.buyIdleItems(user);
	}


}
