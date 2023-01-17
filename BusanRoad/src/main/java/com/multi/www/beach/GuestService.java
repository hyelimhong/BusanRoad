package com.multi.www.beach;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GuestService {

	
	@Autowired
	GuestDAO dao2;
	
	public List<GuestVO> all2() {
		return dao2.all2();
	}
}
