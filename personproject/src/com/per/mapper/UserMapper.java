package com.per.mapper;

import com.per.pojo.User;

/**
 * 数据层接口类
 * @author 黎锋
 *
 */
public interface UserMapper {
    /**
     * 根据用户对象查询用户
     * @param user 用户对象
     * @return 用户对象
     */
	User selByUser(User user);
}
