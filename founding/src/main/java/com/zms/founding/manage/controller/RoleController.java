package com.zms.founding.manage.controller;

import com.zms.founding.common.AjaxResult;
import com.zms.founding.common.Page;
import com.zms.founding.manage.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;


/**
 * 角色进行管理
 * @author 19448
 *
 */
@Controller
@RequestMapping("/role")
public class RoleController {
	/**
	调用service层
	 */
	@Autowired
	private RoleService roleService;
	/**
	跳转
	 */
	@RequestMapping("/torole")
	public String torole() {
		return "manage/role";
	}
	/**
	 * 异步处理查询的条件
	 */
	@ResponseBody
	@RequestMapping("/index")
	public Object index(
			@RequestParam(value="pageno",required=false,defaultValue="1") int pageno,
			@RequestParam(value="pagesize",required=false,defaultValue="3")int pagesize
			 ,
			@RequestParam(value="seachtext",required=false,defaultValue="") String seachtext) {
		AjaxResult ajaxResult=new AjaxResult();
		if(seachtext==null||"".equals(seachtext)){
		try{
				Page page = roleService.queryRoleList(pageno, pagesize);
				ajaxResult.setSuccess(true);
				ajaxResult.setPage(page);
			}catch (Exception e){
				ajaxResult.setSuccess(false);
				ajaxResult.setMsString("查询失败");
			}
		}else{
			//表单中有值
			try{
				Map<String,Object> map=new HashMap<>();
				map.put("pageno",pageno);
				map.put("pagesize",pagesize);
				map.put("seachtext",seachtext);
			//调用业务层方法
				Page page=roleService.queryFormValue(map);
				ajaxResult.setSuccess(true);
				ajaxResult.setPage(page);
			}catch (Exception e){
				ajaxResult.setSuccess(false);
				ajaxResult.setMsString("查询出现错误");
			}
		}
		return ajaxResult;
	}
}
