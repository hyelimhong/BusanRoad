package com.multi.www.beach;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GuestController {

 
	@Autowired
	GuestService guestService;
	
	@RequestMapping("guest")
	private void all2(Model model) {
		List<GuestVO> guest =  guestService.all2();
		model.addAttribute("list", guest);
	}
}
