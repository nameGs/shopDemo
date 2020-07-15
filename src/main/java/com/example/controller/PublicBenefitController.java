package com.example.controller;

import com.example.pojo.IdleItems;
import com.example.pojo.PublicBenefit;
import com.example.pojo.User;
import com.example.service.PublicBenefitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
public class PublicBenefitController {
    @Autowired
    private PublicBenefitService publicBenefitService;
    @RequestMapping("/jumpAddPublicBenefit.action")
    public String jumpAddPublicBenefit(){
        return "addPublicBenefit";
    }

    @RequestMapping(value = "/addPublicBenefit.action",method = RequestMethod.POST)
    private String addPublicBenefit(HttpServletRequest request, @RequestParam("describe")String describe,@RequestParam("userName")String username,@RequestParam("gender")String gender,@RequestParam("needMoney")float needMoney,@RequestParam("age")int age ,@RequestParam("pictureName") MultipartFile pictureName) throws IOException {
        PublicBenefit publicBenefit = new PublicBenefit();
        String originalFileName = pictureName.getOriginalFilename();
        String dirPath = request.getSession().getServletContext().getRealPath("/img/");
        File file = new File(dirPath);
        if(!file.exists()){
            file.mkdirs();
        }
        int id = ((User)request.getSession().getAttribute("user")).getId();
        String newFileName = username + "-" + age + "-" + id + ".jpg";
        pictureName.transferTo(new File(dirPath + newFileName));
        publicBenefit.setPictureName(newFileName);
        publicBenefit.setAge(age);
        publicBenefit.setGender(gender);
        publicBenefit.setMoneyNumber(0);
        publicBenefit.setUserId(id);
        publicBenefit.setNeedMoney(needMoney);
        publicBenefit.setUserName(username);
        publicBenefit.setIllnessDescribe(describe);
        publicBenefitService.addPublicBenefit(publicBenefit);
        return "redirect:jumpLoveHeart.action";
    }
}
