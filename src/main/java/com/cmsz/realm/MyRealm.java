package com.cmsz.realm;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.cmsz.bean.User;
import com.cmsz.service.IUserService;

public class MyRealm extends AuthorizingRealm{

	
	@Autowired
	private IUserService userService;
	//�����֤
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		String username = (String) token.getPrincipal();
		User user = userService.queryByUsername(username);
		if(user == null){
			return null;
		}
		String realPassword = user.getPassword();
		AuthenticationInfo info = new SimpleAuthenticationInfo(user,realPassword,"myRealm");
		return info;
	}
	
	//��Ȩ
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		//UserBean user =(UserBean) principal.getPrimaryPrincipal();
		// ���� �û��������ݿ��в�ѯ����û���ӵ�е����еĲ˵�Ȩ��
		//List<String> list=userService.findMenusByUid(user.getUserid());

		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		List<String> list = new ArrayList<String>();
		list.add("USER_ADDw");
		list.add("USER_DELETE");
		if(list!=null && list.size()>0){
			info.addStringPermissions(list);
		}
		return info;
	}

}
