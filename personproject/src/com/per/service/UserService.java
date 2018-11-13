package com.per.service;

import java.util.Map;
import com.per.pojo.User;

/**
 * 业务层用户相关操作接口类
 * @author 黎锋
 *
 */
public interface UserService {
	/**
	 * 
	 * 传入用户对象，返回一个Map集合
	 * @param user 用户对象
	 * @return Map对象
	 */
    Map<String, Object> login(User user);
}
