package com.example.service;

import com.example.pojo.IdleItems;

import java.util.List;

public interface IdleItemsService {
    public List<IdleItems> findIdleItems();
    public void addIdleItems(IdleItems idleItems);
    public List<IdleItems> findIdleItemsByUserId(int userId);
    public void sellerIdleItems(int id);
}
