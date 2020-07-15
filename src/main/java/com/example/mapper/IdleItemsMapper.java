package com.example.mapper;

import com.example.pojo.IdleItems;

import java.util.List;

public interface IdleItemsMapper {
    public List<IdleItems> findIdleItems();
    public void addIdleItems(IdleItems idleItems);
    public List<IdleItems> findIdleItemsByUserId(int userId);
    public void sellerIdleItems(int id);
}
