package com.dsf.bysj.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dsf.bysj.dao.TAdminDAO;
import com.dsf.bysj.model.TAdmin;
import com.opensymphony.xwork2.ActionSupport;

public class adminAction extends ActionSupport
{
	private int userId;
	private String userName;
	private String userPw;
	 
	private String message;
	private String path;
	
	private int index=1;

	private TAdminDAO adminDAO;
	
	
	public String adminAdd()
	{
		if(userName.trim().equals("admin"))
		{
			this.setMessage("admin账户已存在");
			this.setPath("admin/index/adminAdd.jsp");
			return "succeed";
		}
		else
		{
			TAdmin admin=new TAdmin();
			admin.setUserName(userName);
			admin.setUserPw(userPw);
			adminDAO.save(admin);
			this.setMessage("操作成功");
			this.setPath("adminManage.action");
			return "succeed";
		}
		
		
	}
	
	
	
	public String adminManage()
	{
		List adminList=adminDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("adminList", adminList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String adminDel()
	{
		adminDAO.delete(adminDAO.findById(userId));
		this.setMessage("删除成功");
		this.setPath("adminManage.action");
		return "succeed";
	}
	
	

	public TAdminDAO getAdminDAO()
	{
		return adminDAO;
	}

	public void setAdminDAO(TAdminDAO adminDAO)
	{
		this.adminDAO = adminDAO;
	}

	public String getMessage()
	{
		return message;
	}

	public int getIndex()
	{
		return index;
	}



	public void setIndex(int index)
	{
		this.index = index;
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

	public int getUserId()
	{
		return userId;
	}

	public void setUserId(int userId)
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
	 
}
