package com.multi.www.beach;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class GuestDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public List<GuestVO> all2() {
		return my.selectList("guest.all");
	}
}
