package com.su.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.su.entity.Classes_n;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.su.service.ClassesService;

@Controller
public class ClassesController {
@Autowired
private ClassesService cs;

	@RequestMapping("/selClasses")
	public void selClasses(
				HttpServletResponse response
			) throws IOException {
		PrintWriter out=response.getWriter();
		List<Classes_n> ls=cs.selClasses();
		String info=JSON.toJSONString(ls);
		out.print(info);
		out.flush();
		out.close();
	}
}
