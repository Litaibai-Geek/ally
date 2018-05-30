package com.ally.manager.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ally.manager.mapper.TAdminMapper;
import com.ally.manager.pojo.TAdmin;
import com.ally.manager.pojo.TAdminExample;
import com.ally.manager.pojo.TAdminExample.Criteria;
import com.ally.manager.service.UserService;
@Service  
public class UserServiceImpl implements UserService {  
    @Autowired  
    private TAdminMapper adminMapper;  
    
    /* 
     * 检验用户登录业务
     * 
     */

    public TAdmin checkLogin(String username, String password) {
    	TAdminExample example = new TAdminExample();
    	Criteria criteria = example.createCriteria();
    	//添加查询条件
    	criteria.andUsernameEqualTo(username);
    	criteria.andPasswordEqualTo(password);
    	List<TAdmin> list = adminMapper.selectByExample(example);
    	if(list !=null && list.size()>0) {
    		TAdmin admin = list.get(0);
    		return admin;
    	}
    	
    	return null;
    }

}  