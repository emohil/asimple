package com.company.gap.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("admin")
public class HomepageController {
	
	@RequestMapping("/homepage")
	public String homepage() {
		return "homepage";
		
	}
	
}
