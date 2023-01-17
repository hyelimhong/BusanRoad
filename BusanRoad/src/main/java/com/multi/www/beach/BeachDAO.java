package com.multi.www.beach;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BeachDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public List<BeachVO> all() {
		return my.selectList("beach.all");
	}
	
	public BeachVO one(BeachVO vo) {
		return my.selectOne("beach.one", vo);
	}
	
}
