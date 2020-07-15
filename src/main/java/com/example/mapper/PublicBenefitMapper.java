package com.example.mapper;

import com.example.pojo.PublicBenefit;

import java.util.List;

public interface PublicBenefitMapper {
    public List<PublicBenefit> findPublicBenefit();
    public void addPublicBenefit(PublicBenefit publicBenefit);
    public int getUserId(int id);
    public void getHelp(PublicBenefit publicBenefit);
    public PublicBenefit findPublicBenefitById(int id);
}
