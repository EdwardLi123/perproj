package com.bjsxt.service.impl;

import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import com.bjsxt.mapper.UserMapper;
import com.bjsxt.pojo.User;
import com.bjsxt.service.UserSerivice;

@Service
public class UserServiceImpl implements UserSerivice{
	//������־����
	Logger logger = Logger.getLogger(UserServiceImpl.class);
	//����Dao�����
	//UserDao ud = new UserDaoImpl();
	@Resource
	private UserMapper userMapper;
	@Override
	public User login(User user) {
		User u = userMapper.selByUser(user);
		return u;
	}
	@Override
	public int insUser(User user) {
		int result = userMapper.insUser(user);
		return result;
	}
	@Override
	public int updUser(User user) {
		int result = userMapper.updUser(user);
		return result;
	}
	
	
//	@Override
//	public User checkLoginService(String uname, String pwd) {
//		//��ӡ��־
//	    logger.debug(uname+"发起登录请求�");
//		//User u = ud.checkUserLoginDao(uname, pwd);
//		//�ж�
//		if(null!=u) {
//			logger.debug(uname + "��¼�ɹ���");
//		}else {
//			logger.debug(uname + "��¼ʧ�ܣ�");
//		}
//		return u;
//	}
	//�޸��û�����
//	@Override
//	public int userChangePwdService(String newPwd, int uid) {
//		logger.debug(uid+":���������޸�����");
//		int index = ud.userChangePwdDao(newPwd,uid);
//		if(index>0) {
//			logger.debug(uid+":�޸�����ɹ�");
//		}else {
//			logger.debug(uid+":�޸�����ʧ��");
//		}
//		return index;
//	}
	//��ȡ���е��û���Ϣ
//	@Override
//	public List<User> userShowService() {
//		List<User> lu = ud.userShowDao();
//		logger.debug("�����û���Ϣ:" + lu);
//		return lu;
//	}
	//�û�ע��
//	@Override
//	public int userRegService(User u) {
//		// TODO Auto-generated method stub
//		return ud.userRegDao(u);
//	}
	
}
