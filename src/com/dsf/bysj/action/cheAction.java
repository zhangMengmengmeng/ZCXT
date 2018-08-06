package com.dsf.bysj.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dsf.bysj.dao.TCheDAO;
import com.dsf.bysj.model.TChe;
import com.opensymphony.xwork2.ActionSupport;

public class cheAction extends ActionSupport
{
	private Integer id;
	private String chexing;
	private String pinpai;
	private String beizhu;

	private String fujian;
	private Integer rizu;
	private String zt;///空闲中----已租出---已预约
	private String del;
	
	private String message;
	private String path;
	
	private TCheDAO cheDAO;
	
	public String cheAdd()
	{
		TChe che=new TChe();
		
		che.setChexing(chexing);
		che.setPinpai(pinpai);
		che.setBeizhu(beizhu);
		che.setFujian(fujian);
		
		che.setRizu(rizu);
		che.setZt("空闲中");
		che.setDel("no");
		
		cheDAO.save(che);
		this.setMessage("操作成功");
		this.setPath("cheMana.action");
		return "succeed";
	}
	
	
	public String cheMana()
	{
		String sql="from TChe where del='no'";
		List cheList=cheDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("cheList", cheList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String cheDel()
	{
		TChe che=cheDAO.findById(id);
		che.setDel("yes");
		cheDAO.attachDirty(che);
		
		this.setMessage("操作成功");
		this.setPath("cheMana.action");
		return "succeed";
	}

	
	public String cheAll()
	{
		String sql="from TChe where del='no' and zt='空闲中'";
		List cheList=cheDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("cheList", cheList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String cheSuoyou()
	{
		String sql="from TChe where del='no'";
		List cheList=cheDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("cheList", cheList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String cheDetailQian()
	{
		TChe che=cheDAO.findById(id);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("che", che);
		return ActionSupport.SUCCESS;
	}
	
	
	public String cheRes()
	{
		String sql="from TChe where del='no' and chexing like '%"+chexing.trim()+"%'";
		List cheList=cheDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("cheList", cheList);
		return ActionSupport.SUCCESS;
	}
	
	

	public String getBeizhu()
	{
		return beizhu;
	}



	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
	}



	public TCheDAO getCheDAO()
	{
		return cheDAO;
	}



	public void setCheDAO(TCheDAO cheDAO)
	{
		this.cheDAO = cheDAO;
	}



	public String getChexing()
	{
		return chexing;
	}



	public void setChexing(String chexing)
	{
		this.chexing = chexing;
	}



	public String getZt()
	{
		return zt;
	}


	public void setZt(String zt)
	{
		this.zt = zt;
	}


	public String getDel()
	{
		return del;
	}



	public void setDel(String del)
	{
		this.del = del;
	}



	public String getFujian()
	{
		return fujian;
	}



	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}



	public Integer getId()
	{
		return id;
	}



	public void setId(Integer id)
	{
		this.id = id;
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



	public String getPinpai()
	{
		return pinpai;
	}



	public void setPinpai(String pinpai)
	{
		this.pinpai = pinpai;
	}



	public Integer getRizu()
	{
		return rizu;
	}



	public void setRizu(Integer rizu)
	{
		this.rizu = rizu;
	}
	
}
