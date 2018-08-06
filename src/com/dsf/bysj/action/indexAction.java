package com.dsf.bysj.action;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dsf.bysj.dao.TCheDAO;
import com.dsf.bysj.dao.TGonggaoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport
{
	private TGonggaoDAO gonggaoDAO;
	private TCheDAO cheDAO;
	
	public TCheDAO getCheDAO()
	{
		return cheDAO;
	}

	public void setCheDAO(TCheDAO cheDAO)
	{
		this.cheDAO = cheDAO;
	}

	public TGonggaoDAO getGonggaoDAO()
	{
		return gonggaoDAO;
	}

	public void setGonggaoDAO(TGonggaoDAO gonggaoDAO)
	{
		this.gonggaoDAO = gonggaoDAO;
	}


	public String index()
	{
		
		HttpServletRequest request=ServletActionContext.getRequest();
		
		List gonggaoList =gonggaoDAO.findAll();
		if(gonggaoList.size()>6)
		{
			gonggaoList=gonggaoList.subList(0, 6);
		}
		request.setAttribute("gonggaoList", gonggaoList);
		
		
		String sql="from TChe where del='no'";
		List cheList=cheDAO.getHibernateTemplate().find(sql);
		if(cheList.size()>4)
		{
			cheList=cheList.subList(0, 4);
		}
		request.setAttribute("cheList", cheList);
		
		return ActionSupport.SUCCESS;
	}

}
