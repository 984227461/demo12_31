package com.su.dao;

import java.util.List;

import com.su.dto.Dto;
import com.su.entity.Faqs;

public interface FaqsMapper {
   public List<Dto> selFaqsOrderByTime(String fname);
   
   public Dto selFaqsById(Integer id);
   
   public int insFaqs(Faqs faq);
}