package com.dsf.bysj.action;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.apache.struts2.ServletActionContext;
import org.apache.taglibs.standard.lang.jstl.test.beans.PublicInterface2;

import com.dsf.bysj.dao.TUserDAO;
import com.dsf.bysj.model.TUser;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport
{
    	
	private Integer userId;
	private String userName;
	private String userPw;
	private String userRealname;

	private String userSex;
	private int userAge;
	private String userAddress;
	private String userTel;
	
	private String userJiazhao;
	private String userCard;
	private String userLeixing;
	private String userDel;
	
	
	private String message;
	private String path;
	
	private TUserDAO userDAO;
	
	
	//会员注册
	public String userReg()
	{
		
		Map map = new HashedMap();
		TUser user=new TUser();		
		user.setUserName(userName);
		user.setUserPw(userPw);
		user.setUserRealname(userRealname);
		
		user.setUserSex(userSex);
		user.setUserAge(userAge);
		user.setUserAddress(userAddress);
		user.setUserTel(userTel);
		
		user.setUserJiazhao(userJiazhao);
		user.setUserCard(userCard);
		user.setUserLeixing("普通会员");
		user.setUserDel("no");
		

		List list = userDAO.findByProperty("userName", userName);
		if(list.size()==0){
		userDAO.save(user);
		//this.setMessage("注册成功，请登录");
		//this.setPath("site/denglu/userLogin.jsp");
		map.put("data", true);
		/*
		Stringjson = JSONObject.fromObject(map);//将map对象转换成json类型数据
		result = json.toString();
		}else{
			request.put("data", f);
			return "data";
		}
		*/
		return SUCCESS;
	}
		return SUCCESS;
	}
	public String userAdd()
	{
		TUser user=new TUser();
		
		//user.setUserId(0);
		user.setUserName(userName);
		user.setUserPw(userPw);
		user.setUserRealname(userRealname);
		
		user.setUserSex(userSex);
		user.setUserAge(userAge);
		user.setUserAddress(userAddress);
		user.setUserTel(userTel);
		
		user.setUserJiazhao(userJiazhao);
		user.setUserCard(userCard);
		user.setUserLeixing(userLeixing);
		user.setUserDel("no");
		
		userDAO.save(user);

		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息添加成功");
		return "msg";
	}
	
	public String userMana()
	{
		String sql="from TUser where userDel='no'";
		
		List userList=userDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}
		
	public String findById(){
		TUser user=userDAO.findById(userId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("user", user);

		return ActionSupport.SUCCESS;
	}
	
	public String updateUser()
	{
		TUser user=new TUser();
		
		//user.setUserId(0);
		user.setUserId(userId);
		user.setUserName(userName);
		user.setUserPw(userPw);
		user.setUserRealname(userRealname);
		
		user.setUserSex(userSex);
		user.setUserAge(userAge);
		user.setUserAddress(userAddress);
		user.setUserTel(userTel);
		
		user.setUserJiazhao(userJiazhao);
		user.setUserCard(userCard);
		user.setUserLeixing(userLeixing);
		user.setUserDel("no");
		
		userDAO.update(user);

		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息修改成功");
		return "msg";
	}
	
	public String userDel()
	{
		TUser user=userDAO.findById(userId);
		
		user.setUserDel("yes");
		userDAO.attachDirty(user);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息删除成功");
		return "msg";
	}
	
	
	public String userDetail()
	{
		String sql="from TUser where userId="+userId;
		
		List userList=userDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}
	
	public String userSelect()
	{
		String sql="from TUser where userDel='no'";
		
		List userList=userDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}
	

	public Integer getUserId()
	{
		return userId;
	}




	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}




	public String getUserName()
	{
		return userName;
	}




	public void setUserName(String userName)
	{
		this.userName = userName;
	}




	public String getUserPw()
	{
		return userPw;
	}




	public void setUserPw(String userPw)
	{
		this.userPw = userPw;
	}




	public String getUserRealname()
	{
		return userRealname;
	}




	public void setUserRealname(String userRealname)
	{
		this.userRealname = userRealname;
	}




	public String getUserSex()
	{
		return userSex;
	}




	public void setUserSex(String userSex)
	{
		this.userSex = userSex;
	}




	public int getUserAge()
	{
		return userAge;
	}




	public void setUserAge(int userAge)
	{
		this.userAge = userAge;
	}




	public String getUserAddress()
	{
		return userAddress;
	}




	public void setUserAddress(String userAddress)
	{
		this.userAddress = userAddress;
	}




	public String getUserTel()
	{
		return userTel;
	}




	public void setUserTel(String userTel)
	{
		this.userTel = userTel;
	}




	public String getUserJiazhao()
	{
		return userJiazhao;
	}




	public void setUserJiazhao(String userJiazhao)
	{
		this.userJiazhao = userJiazhao;
	}




	public String getUserCard()
	{
		return userCard;
	}




	public void setUserCard(String userCard)
	{
		this.userCard = userCard;
	}




	public String getUserLeixing()
	{
		return userLeixing;
	}




	public void setUserLeixing(String userLeixing)
	{
		this.userLeixing = userLeixing;
	}




	public String getUserDel()
	{
		return userDel;
	}




	public void setUserDel(String userDel)
	{
		this.userDel = userDel;
	}




	public String getMessage()
	{
		return message;
	}




	public void setMessage(String message)
	{
		this.message = message;
	}




	public String getPath()
	{
		return path;
	}




	public void setPath(String path)
	{
		this.path = path;
	}




	public TUserDAO getUserDAO()
	{
		return userDAO;
	}




	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}
	
}
