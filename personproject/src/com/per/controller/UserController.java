package com.per.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.per.pojo.User;
import com.per.service.UserService;

@Controller
public class UserController {
	@Resource
    private UserService userServiceImpl; 
	@RequestMapping("/login")
	private String login(User user,HttpSession session) {
		System.out.println(user.toString());
		Map<String, Object> map = userServiceImpl.login(user);
		User u = (User)map.get("user");
		if(u != null) {//用户名密码验证成功
			session.setAttribute("user", u);
			return "redirect:/main/main.jsp";
		}else {
			return "redirect:/login.jsp";
		}
	}
}
