package com.bjsxt.controller;

import java.io.IOException;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bjsxt.pojo.User;
import com.bjsxt.service.UserSerivice;
import com.bjsxt.service.impl.UserServiceImpl;

@Controller
public class UserController {	
	//日志
	Logger logger = Logger.getLogger(UserServiceImpl.class);
	
    //注入对象
	@Resource
	UserSerivice userServiceImpl;
	
	/**
	 * 登录方法
	 * @param 用户对象
	 * @param session sesion对象
	 * @return 页面路径字符串
	 */
	@RequestMapping("/login")//登录
	public String login(User user,HttpSession session) {
		logger.debug(user + "对象从哪里来的，值得思考");
		User u = userServiceImpl.login(user);////
		if(u != null) {
			session.setAttribute("user", u);
			return "redirect:/main/main.jsp";
		}
		else {
			return "redirect:/login.jsp";
		}		
	}
	
	/**
	 * 退出操作
	 * @param req 请求对象
	 * @param resp 响应对象
	 * @throws IOException
	 */
	@RequestMapping("/out")
	public String userOut(HttpServletRequest req) throws IOException {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("user");		
		// 获取操做符
	    String oper = req.getParameter("oper");
	    if ("out".equals(oper)) {
	    	logger.debug(user.getUname() + "发起退出请求！");
			logger.debug(session.getAttribute("user")== null ? "空" : session.getAttribute("user").toString());
			session.removeAttribute("user");//移除user对象
			session.invalidate();//杀死session对象
	    	return "redirect:/login.jsp";
	    }else {
	    	return "redirect:/main/main.jsp";
		}
	}
	
	/**
	 * 注册操作
	 * @return
	 */
	@RequestMapping("/reg")
	public String reg(User user,HttpServletRequest req) {
		if("reg".equals(req.getParameter("oper"))) {//注册处理-判断操作符号
			//日志
			logger.debug(user.toString());
			int result =  userServiceImpl.insUser(user);
			if(result >0) {//注册成功
				//日志
				logger.debug("注册处理--成功" + user.toString());
				return "redirect:/login.jsp";//跳到登录页面
			}else {//注册失败
				return "redirect:/UserInfo/reg.jsp";
			}
		}else {//非注册操作
			return "redirect:/UserInfo/reg.jsp";
		}
	}
	
	/**
	 * 修改用户信息
	 * @param user 修改后的用户对象
	 * @param req 响应对象
	 * @return 页面路径
	 */
	@RequestMapping("/modify")
	public String modify(User user,HttpServletRequest req) {
		//日志
		logger.debug(user.toString());
		logger.debug(req.getParameter("oper"));
		//修改处理--判断操作符号
		if("mod".equals(req.getParameter("oper"))) {
			HttpSession session = req.getSession();
			//移除修改前的user对象
			session.removeAttribute("user");
			//放入修改后的对象
			session.setAttribute("user", user);
			int result = userServiceImpl.updUser(user);
			if(result > 0) {//修改成功
				return "redirect:/main/main.jsp";
			}else {//修改失败
				return "404";//以后再考虑怎么处理吧
			}
		}else {//非修改操作符
			return "404";//以后再考虑怎么处理吧
		}
	}
}
