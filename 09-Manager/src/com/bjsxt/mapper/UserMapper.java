package com.bjsxt.mapper;

import com.bjsxt.pojo.User;

public interface UserMapper {
	/**
	 * 根据用户对象查找用户
	 * @param user 用户对象
	 * @return 用户对象
	 */
	User selByUser(User user);
	
	/**
	 * 根据用户对象新增用户
	 * @param user 用户对象
	 * @return 用户对象
	 */
	int insUser(User user);
	
	/**
	 * 修改用户信息
	 * @param user
	 * @return
	 */
	int updUser(User user);
}
