package com.example.service;

import com.example.mapper.IdleItemsMapper;
import com.example.pojo.IdleItems;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Component
public class IdleItemsServiceImpl implements IdleItemsService {
        @Autowired
    private IdleItemsMapper idleItemsMapper;
    public List<IdleItems> findIdleItems() {
        return idleItemsMapper.findIdleItems();
    }

    public void addIdleItems(IdleItems idleItems) {
        idleItemsMapper.addIdleItems(idleItems);
    }

    public List<IdleItems> findIdleItemsByUserId(int userId) {
        return idleItemsMapper.findIdleItemsByUserId(userId);
    }

    public void sellerIdleItems(int id) {
        idleItemsMapper.sellerIdleItems(id);
    }
}
