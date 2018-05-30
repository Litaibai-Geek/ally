package com.ally.manager.service;

import com.ally.manager.pojo.TAdmin;

public interface UserService {  
	//检验用户登录
    TAdmin checkLogin(String username,String password);

} 
