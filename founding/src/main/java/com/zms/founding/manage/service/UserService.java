package com.zms.founding.manage.service;

import java.util.Map;
import com.zms.founding.bean.User;
import com.zms.founding.common.Page;

public interface UserService {
	User login(Map<String, Object> map);
	Page<User> queryUserPage(Integer pageno, Integer pagesize);
	/**
	 * 保存用户
	 */
	int saveUser(User user);
	/**
	 * 通过id查询user对象
	 */
	User queryById(int id);
	/**
	 * 更新user
	 */
	int update(User user);
	/**
	 * 删除用户
	 */
	int delete(User user);
}
