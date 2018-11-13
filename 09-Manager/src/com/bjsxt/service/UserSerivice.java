package com.bjsxt.service;

import javax.jws.soap.SOAPBinding.Use;

import com.bjsxt.pojo.User;

public interface UserSerivice {
	
	/**
	 * 登录处理
	 * @param user 用户对象
	 * @return 用户对象
	 */
	User login(User user);
	
	/**
	 * 注册处理
	 * @param user 用户对象
	 * @return 用户对象
	 */
	int insUser(User user);
	
	/**
	 * 修改用户信息
	 * @param user 用户对象
	 * @return 用户对象
	 */
	int updUser(User user);
	
	/**
	 * 登录检验
	 * @param uname 用户名
	 * @param pwd	密码
	 * @return	用户对象
	 */
//	User checkLoginService(String uname,String pwd);

	/**
	 * �޸��û�����
	 * @param newPwd ������
	 * @param uid �û�ID
	 * @return
	 */
//	int userChangePwdService(String newPwd, int uid);

	/**
	 * ��ȡ���е��û���Ϣ
	 * @return
	 */
//	List<User> userShowService();
    
	/**
	 * �û�ע��
	 * @param u
	 * @return
	 */
//	int userRegService(User u);

}
