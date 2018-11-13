package com.per.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.per.mapper.UserMapper;
import com.per.pojo.User;
import com.per.service.UserService;

/**
 * 业务层用户相关操作实现类
 * @author 黎锋
 *
 */
@Service
public class UserserviceImpl implements UserService {
    @Resource
	private UserMapper UserMapper;
	@Override
	public Map<String, Object> login(User user) {
		User u = UserMapper.selByUser(user);
		Map<String, Object> map = new HashMap<>();
		if(user != null) {
			//这里扩展别的功能！！！
		}
		map.put("user", u);
		return map;
	}
}
