package com.su.service.impl;

import java.util.List;

import com.su.dao.ClassesMapper;
import com.su.entity.Classes_n;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.su.service.ClassesService;
@Service
public class ClassesServiceImpl implements ClassesService {
	@Autowired
	private ClassesMapper cm;
	@Override
	public List<Classes_n> selClasses() {
		return cm.selClasses();
	}

}
