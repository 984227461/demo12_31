package com.su.service;

import java.util.List;

import com.su.dto.Dto;
import com.su.entity.Faqs;

public interface FaqsService {
		public List<Dto> selFaqsOrderByTime(String fname);
	   
	   public Dto selFaqsById(Integer id);
	   
	   public boolean insFaqs(Faqs faq);
}
