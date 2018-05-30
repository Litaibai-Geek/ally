<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>后台管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="header">

    <div class="dl-title">
        <!--<img src="/chinapost/Public/assets/img/top.png">-->
    </div>

    <div class="dl-log">欢迎您，<span class="dl-log-user">${username}</span><a href="/back/loginout.do" title="退出系统" class="dl-log-quit">[退出]</a>
    </div>
</div>
<div class="content">
    <div class="dl-main-nav">
        <div class="dl-inform"><div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div></div>
        <ul id="J_Nav"  class="nav-list ks-clear">
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">用户管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">权限管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">商品管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">仓库管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">订单管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">钱包管理</div></li>		
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">个人资料</div></li>

        </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
</div>

<div class="center">
	欢迎访问阿里路亚后台管理系统!
</div>
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="assets/js/bui-min.js"></script>
<script type="text/javascript" src="assets/js/common/main-min.js"></script>
<script type="text/javascript" src="assets/js/config-min.js"></script>
<script>
BUI.use('common/main',function(){
        var config = [
           {id:'1',menu:[
        	   {text:'品牌商管理',items:[
        		{id:'userback_pps',text:'品牌管理',href:'User/index.html'},
        		{id:'userback_qy',text:'企业管理',href:'User/index.html'}]},
        	   {text:'分销商管理',items:[
            		{id:'userback_dz',text:'店主管理',href:'User/index.html'},
            		{id:'userback_pt',text:'平台管理',href:'User/index.html'}]},
        	   {text:'管理员管理',items:[
            		{id:'userback_pt',text:'管理员',href:'Admin/index.html'}]},
               {text:'用户入驻审核',items:[
                	{id:'userback_dz',text:'品牌商入驻审核',href:'User/index.html'},
                	{id:'userback_pt',text:'分销商入驻审核',href:'User/index.html'}]}
        		]},
            		
            		
           {id:'2',menu:[{text:'权限管理',items:[{id:'auth_j',text:'用户角色管理',href:'Back/index.html'}]}]},
         
           {id:'3',menu:[
        	   {text:'产品管理',items:[
        	   		{id:'shop_f',text:'分类管理',href:'Back/index.html'},
        	  		{id:'shop_c',text:'产品管理',href:'Back/index.html'}]},
        	   {text:'产品信息',items:[
            	   	{id:'shop_f',text:'图片管理',href:'Back/index.html'},
            	  	{id:'shop_c',text:'评论管理',href:'Back/index.html'},
            	  	{id:'shop_f',text:'属性管理',href:'Back/index.html'},
            	  	{id:'shop_c',text:'属值管理',href:'Back/index.html'}]},
            	   	
           ]},
        	   
        	{id:'4',menu:[{text:'仓库管理',items:[
            	   {id:'shop_f',text:'国家管理',href:'Back/index.html'},
            	   {id:'shop_c',text:'产品管理',href:'Back/index.html'}
            	   ]}]},
            	   
            {id:'5',menu:[{text:'订单管理',items:[
                	{id:'shop_f',text:'订单管理',href:'Back/index.html'}
                	]}]},
                
            {id:'6',menu:[{text:'钱包管理',items:[
                    {id:'shop_f',text:'钱包管理',href:'Back/index.html'}
                  	]}]},
                  	
            {id:'7',menu:[{text:'个人资料',items:[
                    {id:'shop_f',text:'个人资料',href:'Back/index.html'}
                    ]}]},
        
        ];
        new PageUtil.MainPage({
            modulesConfig : config
        });
    }); 
/*     BUI.use('common/main',function(){
    var config = [{   //模块菜单
    	  id:'menu',      //模块编号
    	  collapsed:true, //默认左侧菜单收缩
    	  homePage:'code', //默认打开的主页
    	  menu:[{         //二级菜单
    	      text:'首页内容',
    	      items:[   //三级菜单
    	        {id:'code',text:'首页代码',href:'main/code.html',closeable : false}, //设置不能关闭标签
    	        {id:'c',text:'标签页',href:'test.html'},
    	        {id:'d',text:'窗口变化',href:'test.html'},
    	        {id:'e',text:'首页资源文件',href:'test.html'},
    	        {id:'g',text:'其他',href:'test.html'}
    	      ]
    	    },{
    	      //二级菜单
    	      
    	    },{
    	      //二级菜单
    	  }]
    	},{
    	  
    	  //模块菜单
    	}];
    	//初始化主页菜单
    	new PageUtil.MainPage({
    	  modulesConfig : config
    	});
    }); */
</script>
</body>
</html>