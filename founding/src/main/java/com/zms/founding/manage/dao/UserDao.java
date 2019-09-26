package com.zms.founding.manage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zms.founding.bean.User;

public interface UserDao {
	/*
	 * 用户登录数据返回
	 */
	User loginDao(Map<String, Object> map);
	/*
	 * 总用户数
	 */
	int userCount();
	/*
	 * 分页的数据
	 */
	List<User> queryUser(@Param("sInteger") Integer sInteger,@Param("pagesize") Integer pagesize);
	/**
	 * 用户保存
	 */
	int insert(User user);
	/**
	 * 用户id查询
	 * */
	User queryById(@Param("id") int id);
	/**
	 * 更新用户信息
	 */
	int updateUser(User user);
	/**
	 * 删除用户信息
	 */
	int deleteUser(User user);
}
