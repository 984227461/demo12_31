package com.su.service.impl;

import java.util.List;

import com.su.dao.FaqsMapper;
import com.su.entity.Faqs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.su.dto.Dto;
import com.su.service.FaqsService;
@Service
public class FaqsServiceImpl implements FaqsService {
	@Autowired
	private FaqsMapper fm;
	@Override
	public List<Dto> selFaqsOrderByTime(String fname) {
		if(fname!=null) {
			if(fname.length()==0) {
				fname=null;
			}
		}
		return fm.selFaqsOrderByTime(fname);
	}

	@Override
	public Dto selFaqsById(Integer id) {
		return fm.selFaqsById(id);
	}

	@Override
	public boolean insFaqs(Faqs faq) {
		int count=-1;
		count=fm.insFaqs(faq);
		if(count==1) {
			return true;
		}else {
			return false;
		}
	}

}
