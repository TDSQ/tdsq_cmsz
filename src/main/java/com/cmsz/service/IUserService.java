package com.cmsz.service;

import java.util.List;

import com.cmsz.bean.User;

public interface IUserService {

	/**
	 * ����û�
	 */
	void add();
	/**
	 * ����ָ�����û�idɾ���û�
	 * @param userid ��Ҫɾ���ĵ��û�id
	 */
	void delete(int userid);
	/**
	 * �޸��û���Ϣ
	 * @param user �޸ĺ���û���Ϣ��JavaBean
	 */
	void update(User user);
	/**
	 * ��ѯ�û���Ϣ
	 * @param user ��ѯ������
	 * @return
	 * ��ѯ����ļ���
	 */
	List<User> query(User user);
	/**
	 * ����ָ���û���id��ѯ�ض����Ǹ���
	 * @param userid ��Ҫ��ѯ���û�id
	 * @return
	 * ��ѯ���
	 */
	User queryById(int userid);
	/**
	 * �����û��������û���Ϣ
	 * @param username ��Ҫ���ҵ��û���
	 * @return
	 */
	User queryByUsername(String username);
}
