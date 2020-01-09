package com.su.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import com.su.entity.Faqs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.su.service.FaqsService;

@Controller
public class FaqsController {
@Autowired
private FaqsService fs;

	@RequestMapping("/selFaqs")
	public String selFaqs(
				Model model,
				@RequestParam(required = false)String fname,
				HttpSession session
			) {
		if(fname!=null&&fname.length()!=0) {
			session.setAttribute("fname", fname);
		}else {
			session.setAttribute("fname", null);
		}
		model.addAttribute("dto_ls", fs.selFaqsOrderByTime(fname));
		return "index";
	}
	
	@RequestMapping("/selFaqsById")
	public String selFaqsById(
			Model model,
			@RequestParam(required = false)Integer id
			) {
		model.addAttribute("faq", fs.selFaqsById(id));
		return "showInfo";
	}
	
	
	
	@RequestMapping("/insFaq")
	public String insFaq(
			Faqs faq
			) {
		faq.setCreatedate(new Date());
		fs.insFaqs(faq);
		return "redirect:selFaqs";
	}
}
