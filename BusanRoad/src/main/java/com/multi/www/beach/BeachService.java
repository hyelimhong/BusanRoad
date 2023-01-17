package com.multi.www.beach;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BeachService {
	@Autowired
	BeachDAO dao;
	
	public List<BeachVO> all() {
		return dao.all();
	}
	
	public BeachVO one(BeachVO vo) {
		return dao.one(vo);
	}
	
}
