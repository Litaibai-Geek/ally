package com.ally.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/back")
public class BackPage {
	
	@RequestMapping(value="adminPage",method=RequestMethod.GET)
	@ResponseBody
	public String showAdminPage() {
		System.out.println("success");
		return "success";
	}
}
