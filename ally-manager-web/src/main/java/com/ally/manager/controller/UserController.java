package com.ally.manager.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ally.manager.pojo.TAdmin;
import com.ally.manager.service.UserService;
import com.ally.manager.utils.MSG;

@Controller
@RequestMapping("/back")
public class UserController {
	@Resource
	private UserService userService;
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	@ResponseBody
	 public MSG login(String username,String password,HttpSession session) {
		System.out.println(username+":"+password);
		TAdmin user = userService.checkLogin(username, password);
		if(user != null) {
			if(user.getState().equals("1")) {
				session.setAttribute("username",username);
				return MSG.success().add("page", "back.jsp").add("state", "1");
			}else {
				return MSG.success().add("state", "2");
			}
			
			
		}
		return MSG.fail();
	}
	
	@RequestMapping("/loginout")
    public String outLogin(HttpSession session){
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "/index";
    } 
}
