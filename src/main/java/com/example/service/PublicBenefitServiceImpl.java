package com.example.service;

import com.example.mapper.PublicBenefitMapper;
import com.example.pojo.PublicBenefit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Component
public class PublicBenefitServiceImpl implements PublicBenefitService {
    @Autowired
    private PublicBenefitMapper publicBenefitMapper;
    public List<PublicBenefit> findPublicBenefit() {
        return publicBenefitMapper.findPublicBenefit();
    }

    public void addPublicBenefit(PublicBenefit publicBenefit) {
        publicBenefitMapper.addPublicBenefit(publicBenefit);
    }

    public int getUserId(int id) {
        return publicBenefitMapper.getUserId(id);
    }

    public void getHelp(PublicBenefit publicBenefit) {
        publicBenefitMapper.getHelp(publicBenefit);
    }

    public PublicBenefit findPublicBenefitById(int id) {
        return publicBenefitMapper.findPublicBenefitById(id);
    }
}
