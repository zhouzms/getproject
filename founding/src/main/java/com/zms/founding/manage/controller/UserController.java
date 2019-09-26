package com.zms.founding.manage.controller;
import javax.servlet.http.HttpServletRequest;

import com.zms.founding.manage.serviceImpl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zms.founding.bean.User;
import com.zms.founding.common.AjaxResult;
import com.zms.founding.common.Page;
import com.zms.founding.manage.service.UserService;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	/*
	 * 同步请求
	 */
	/*@RequestMapping("/index")
	public String index(@RequestParam(value="pageno",required=false,defaultValue="1") Integer pageno,
			@RequestParam(value="pagesize",required=false,defaultValue="3")	Integer pagesize,
			HttpServletRequest request) {
		Page<User> page=userService.queryUserPage(pageno, pagesize);
		request.setAttribute("page", page);
		return "user/index";
	}*/
	/*
	 * 异步请求
	 */
	@RequestMapping("/toindex")
	public String toindex() {		
		return "user/index2";
	}
	@RequestMapping("/index")
	@ResponseBody
	public Object index(@RequestParam(value="pageno",required=false) Integer pageno,
			@RequestParam(value="pagesize",required=false,defaultValue="3")	Integer pagesize,
			HttpServletRequest request) {
			AjaxResult ajaxResult=new AjaxResult();
		try {
			Page<User> page=userService.queryUserPage(pageno, pagesize);
			ajaxResult.setSuccess(true);
			ajaxResult.setPage(page);
		}catch (Exception e) {
			ajaxResult.setSuccess(false);
			ajaxResult.setMsString("加载数据失败");
		}
		
		return ajaxResult;
	}
	//跳转到修改页面
	@RequestMapping("/toUpdate")
	public String toUpdate(@RequestParam(value = "id",required = false) int id,HttpServletRequest request) {
        User user = userService.queryById(id);
        request.setAttribute("userbyid",user);
        //数据回传

	    return "user/update";
	}
	//异步更新数据
    @RequestMapping("/toupdate")
    @ResponseBody
    public AjaxResult toupdate(User user)
            {
                int update = userService.update(user);
                AjaxResult ajaxResult=new AjaxResult();
                if(update>0){
                ajaxResult.setSuccess(true);
                }else{
                    ajaxResult.setSuccess(false);
                }
                return  ajaxResult;
    }
	//保存用户数据
	@RequestMapping("/userSava")
	@ResponseBody
	//添加删除更新一般使用实体类
	public Object userSava(User user) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			int result=userService.saveUser(user);
			ajaxResult.setSuccess(result==1);
		}catch (Exception e) {
			ajaxResult.setSuccess(false);
			ajaxResult.setMsString("用户保存失败");
		}

		return ajaxResult;
	}
	//跳转到新增页面
	@RequestMapping("/toAdd")
	public String toAdd() {
		return "user/addUser";
	}
	//删除用户
    @RequestMapping("/toDelete")
    @ResponseBody
    public AjaxResult toDelete(User user){
        int delete = userService.delete(user);
        AjaxResult ajaxResult=new AjaxResult();
        if(delete>0){
            ajaxResult.setSuccess(true);
        }else{
            ajaxResult.setSuccess(false);
        }
        return ajaxResult;
    }
}

