package com.zms.founding.manage.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.zms.founding.common.md5Util;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zms.founding.bean.User;
import com.zms.founding.common.Page;
import com.zms.founding.common.exception.loginFailException;
import com.zms.founding.manage.dao.UserDao;
import com.zms.founding.manage.service.UserService;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;
	@Override
	public User login(Map<String, Object> map) {
		User user=userDao.loginDao(map);
		//判断用户名
		if(user==null) {
			throw new loginFailException("用户名或密码不正确");
		}
		//进行密码加密操作
		
		return user;
	}
	@Override
	public Page<User> queryUserPage(Integer pageno, Integer pagesize) {
		//从数据库中查询出结果封装page
		Page<User> page=new Page<User>();
		long count=(long)userDao.userCount();//总记录数
		page.setCount(count);
		Integer sInteger=(pageno-1)*pagesize;
		List<User> list=userDao.queryUser(sInteger,pagesize);//数据项
		page.setList(list);
		page.setPagesize(pagesize);
		page.setPageno(pageno);		
		return page;
	}

	@Override
	public int saveUser(User user) {
		//由于参数与数据库中参数个数不匹配，需要自己手动添加
		Date date=new Date();
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = dateFormat.format(date);
		user.setCreatetime(time);
		//md5
		String admin = md5Util.digest("admin");
		user.setUserpawd(admin);
		int i = userDao.insert(user);
		return i;
	}

	@Override
	public User queryById(int id) {
		User user = userDao.queryById(id);
		return user;
	}

	@Override
	public int update(User user) {
		int i = userDao.updateUser(user);
		return i;
	}

	@Override
	public int delete(User user) {
		int i = userDao.deleteUser(user);
		return i;
	}

}
