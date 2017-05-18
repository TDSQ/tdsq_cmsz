package com.cmsz.service;

import java.util.List;

import com.cmsz.bean.User;

public interface IUserService {

	/**
	 * 添加用户
	 */
	void add();
	/**
	 * 根据指定的用户id删除用户
	 * @param userid 需要删除的的用户id
	 */
	void delete(int userid);
	/**
	 * 修改用户信息
	 * @param user 修改后的用户信息的JavaBean
	 */
	void update(User user);
	/**
	 * 查询用户信息
	 * @param user 查询的条件
	 * @return
	 * 查询结果的集合
	 */
	List<User> query(User user);
	/**
	 * 根据指定用户的id查询特定用那个户
	 * @param userid 需要查询的用户id
	 * @return
	 * 查询结果
	 */
	User queryById(int userid);
	/**
	 * 根据用户名查找用户信息
	 * @param username 需要查找的用户名
	 * @return
	 */
	User queryByUsername(String username);
}
