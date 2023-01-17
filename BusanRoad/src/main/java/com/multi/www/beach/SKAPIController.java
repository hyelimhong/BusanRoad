package com.multi.www.beach;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SKAPIController {

	@Autowired
	SK_API confusion_api;
	
	@RequestMapping("confusion")
	public void confusion(ConfusionVO vo, Model model) throws Exception {
		System.out.println(vo.getId());
		String result = confusion_api.main(vo);
		model.addAttribute("result" , result);
		model.addAttribute("lat", vo.getLat());
		model.addAttribute("lng", vo.getLng());
	}
}
