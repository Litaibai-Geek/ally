package com.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ally.manager.pojo.User;
import com.ally.manager.service.UserService;

public class ssmTest {  
    private ApplicationContext ctx = null;  
    private UserService userService = null;  
    @Before 
    public void init()  
    {  
           ctx = new ClassPathXmlApplicationContext("spring/applicationContext-service.xml");  
           userService = ctx.getBean(UserService.class);  
    }  
    @Test     
    public void testGetUsers(String userName,String password){  
          	User users = userService.checkLogin(userName, password);  
           System.out.println(users);  
    }  
}  