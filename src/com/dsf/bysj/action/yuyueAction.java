package com.dsf.bysj.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dsf.bysj.dao.TCheDAO;
import com.dsf.bysj.dao.TYuyueDAO;
import com.dsf.bysj.model.TUser;
import com.dsf.bysj.model.TYuyue;
import com.opensymphony.xwork2.ActionSupport;

public class yuyueAction extends ActionSupport
{
	private Integer id;
	private Integer cheId;
	private String lianxi;
	private String beizhu;
	
	private String yuyueshi;
	private String zbhcsj;
	
	private TYuyueDAO yuyueDAO;
	private TCheDAO cheDAO;
	
	
	public String yuyueAdd()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		
		TYuyue yuyue=new TYuyue();
		
		yuyue.setCheId(cheId);
		yuyue.setLianxi(lianxi);
		yuyue.setBeizhu(beizhu);
		yuyue.setYuyueshi(yuyueshi);
		yuyue.setZbhcsj(zbhcsj);
		yuyueDAO.save(yuyue);
		//cheDAO.
		request.setAttribute("msg", "ԤԼ�ɹ�");
		return "msg";
	}
	
	
	public String yuyueMana()
	{
		String sql="from TYuyue";
		List yuyueList=yuyueDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<yuyueList.size();i++)
		{
			TYuyue yuyue=(TYuyue)yuyueList.get(i);
			yuyue.setChe(cheDAO.findById(yuyue.getCheId()));
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("yuyueList", yuyueList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String yuyueDel()
	{
		TYuyue yuyue=yuyueDAO.findById(id);
		yuyueDAO.delete(yuyue);
		
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("msg", "ɾ���ɹ�");
		return "msg";
	}


	public Integer getId()
	{
		return id;
	}


	public void setId(Integer id)
	{
		this.id = id;
	}


	public Integer getCheId()
	{
		return cheId;
	}


	public void setCheId(Integer cheId)
	{
		this.cheId = cheId;
	}


	public String getLianxi()
	{
		return lianxi;
	}


	public void setLianxi(String lianxi)
	{
		this.lianxi = lianxi;
	}


	public String getBeizhu()
	{
		return beizhu;
	}


	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
	}


	public String getYuyueshi()
	{
		return yuyueshi;
	}


	public void setYuyueshi(String yuyueshi)
	{
		this.yuyueshi = yuyueshi;
	}


	public String getZbhcsj() {
		return zbhcsj;
	}


	public void setZbhcsj(String zbhcsj) {
		this.zbhcsj = zbhcsj;
	}


	public TYuyueDAO getYuyueDAO()
	{
		return yuyueDAO;
	}


	public void setYuyueDAO(TYuyueDAO yuyueDAO)
	{
		this.yuyueDAO = yuyueDAO;
	}


	public TCheDAO getCheDAO()
	{
		return cheDAO;
	}


	public void setCheDAO(TCheDAO cheDAO)
	{
		this.cheDAO = cheDAO;
	}
	
}
