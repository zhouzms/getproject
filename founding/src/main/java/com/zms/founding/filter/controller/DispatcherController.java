package com.zms.founding.filter.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.activiti.editor.ui.NewModelPopupWindow;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zms.founding.bean.User;
import com.zms.founding.common.AjaxResult;
import com.zms.founding.common.ConstUtil;
import com.zms.founding.manage.service.UserService;

/**
 * 这里用来对前后台页面的跳转的控制
 * @author 19448
 *
 */
@Controller
public class DispatcherController {
	//跳转主页面
	@RequestMapping("/index")
	public String forwardindex() {
		return "index";		
	}
	//跳转登录
	@RequestMapping("/login")
	public String forwardlogin() {
		return "login";	
	}
	//跳转注册
	@RequestMapping("/rsg")
	public String forwardrsg() {
		return "reg";
	}
	//异步请求,不需要跳转只是为了返回结果
	@Autowired
	private UserService userService;
	@RequestMapping("/dologin")
	//@ResponseBody通过jackson组件自动将对象转化为一个json字符串
	@ResponseBody
	public AjaxResult dologin(String loginacct,String userpawd,String type,HttpSession httpSession) {
		AjaxResult ajaxResult=new AjaxResult();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("loginacct", loginacct);
		map.put("userpawd", userpawd);
		map.put("type", type);
		try {
			User user=userService.login(map);
			//将用户名存session域中
			httpSession.setAttribute(ConstUtil.ConstUtil_LOGIN_USER, user);
			ajaxResult.setSuccess(true);
			ajaxResult.setMsString("登录成功");
		}catch (Exception e) {
			e.printStackTrace();
			//失败
			ajaxResult.setSuccess(false);
			ajaxResult.setMsString("登录失败");
		}
		
		return ajaxResult;		
	}
	//同步请求判断是什么登录,一般是跳转或者返回数据
	/*@Autowired
	private UserService userService;
	@RequestMapping("/dologin")
	public String dologin(String loginacct,String userpawd,String type,HttpSession httpSession) {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("loginacct", loginacct);
		map.put("userpawd", userpawd);
		map.put("type", type);
		//由于在业务层已经检测了是否为空，所以不可能会出现空指针的情况
		User user=userService.login(map);
		//将用户名存session域中
		httpSession.setAttribute(ConstUtil.ConstUtil_LOGIN_USER, user);
		return "redirect:/main.htm";		
	}*/
	//成功之后跳转到管理员页面
	@RequestMapping("/main")
	public String forwardmain() {
		return "main";
	}
	//注销
	@RequestMapping("/restart")
	public String restart(HttpSession session) {
		//销毁session域
		session.invalidate();
		return "redirect:/index.htm";
	}
	
}
