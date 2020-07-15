package com.example.controller;

import com.example.pojo.IdleItems;
import com.example.pojo.User;
import com.example.service.IdleItemsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class IdleItemsController {
    @Autowired
    private IdleItemsService idleItemsService;

    @RequestMapping("/jumpAddIdle.action")
    private String jumpAddIdle(){
        return "addIdle";
    }

    @RequestMapping(value = "/addIdleItems.action",method = RequestMethod.POST)
    private String addIdleItems(HttpServletRequest request, @RequestParam("describe")String describe,  @RequestParam("itemsName")String itemsName, @RequestParam("orPrice")float orPrice, @RequestParam("nowPrice")float nowPrice, @RequestParam("pictureName") MultipartFile pictureName) throws IOException {
        IdleItems idleItems = new IdleItems();
        String originalFileName = pictureName.getOriginalFilename();
        String dirPath = request.getSession().getServletContext().getRealPath("/img/");
        File file = new File(dirPath);
        if(!file.exists()){
            file.mkdirs();
        }
        final long l = System.currentTimeMillis();
        final int i = (int)( l % 100 );
        String newFileName = itemsName + "-"  + i + ".jpg";
        System.out.println(dirPath);
        pictureName.transferTo(new File(dirPath + newFileName));
        idleItems.setIdleDescribe(describe);
        idleItems.setItemName(itemsName);
        idleItems.setNowPrice(nowPrice);
        idleItems.setOrPrice(orPrice);
        idleItems.setUserId(((User)request.getSession().getAttribute("user")).getId());
        idleItems.setPictureName(newFileName);
        idleItemsService.addIdleItems(idleItems);
        return "redirect:jumpIdle.action";
    }
}
