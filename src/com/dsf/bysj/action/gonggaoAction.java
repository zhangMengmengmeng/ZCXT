package com.dsf.bysj.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dsf.bysj.dao.TGonggaoDAO;
import com.dsf.bysj.model.TAdmin;
import com.dsf.bysj.model.TGonggao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class gonggaoAction extends ActionSupport
{
	private int gonggaoId;
	private String gonggaoTitle;
	private String fujian;
	private String gonggaoContent;
	private String gonggaoData;
	
	private String message;
	private String path;
	
	private TGonggaoDAO gonggaoDAO;
	
	public String gonggaoAdd()
	{
		TGonggao gonggao=new TGonggao();
		gonggao.setGonggaoTitle(gonggaoTitle);
		gonggao.setFujian(fujian);
		gonggao.setGonggaoContent(gonggaoContent);
		gonggao.setGonggaoData(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
		gonggaoDAO.save(gonggao);
		this.setMessage("信息添加完毕");
		this.setPath("gonggaoMana.action");
		return "succeed";
	}
	
	
	public String gonggaoMana()
	{
		List gonggaoList =gonggaoDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gonggaoList", gonggaoList);
		return ActionSupport.SUCCESS;
	}
	
	public String gonggaoDel()
	{
		TGonggao gonggao=gonggaoDAO.findById(gonggaoId);
		gonggaoDAO.delete(gonggao);
		this.setMessage("信息删除完毕");
		this.setPath("gonggaoMana.action");
		return "succeed";
	}
	
	
	public String gonggaoDetail()
	{
		TGonggao gonggao=gonggaoDAO.findById(gonggaoId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gonggao", gonggao);
		return ActionSupport.SUCCESS;
	}
	
	public String gonggaoDetailQian()
	{
		TGonggao gonggao=gonggaoDAO.findById(gonggaoId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gonggao", gonggao);
		
		return ActionSupport.SUCCESS;
	}
	
	
	public String updateGG()
	{
		TGonggao gonggao=new TGonggao();
		gonggao.setGonggaoId(gonggaoId);
		gonggao.setGonggaoTitle(gonggaoTitle);
		gonggao.setFujian(fujian);
		gonggao.setGonggaoContent(gonggaoContent);
		gonggao.setGonggaoData(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
		gonggaoDAO.update(gonggao);
		this.setMessage("信息修改成功");
		this.setPath("gonggaoMana.action");
		return "succeed";
	}
	
	
	public String gonggaoAll()
	{
        Map request=(Map)ServletActionContext.getContext().get("request");
		
		List gonggaoList=gonggaoDAO.findAll();
		request.put("gonggaoList", gonggaoList);
		return ActionSupport.SUCCESS;
	}

	
	public String findByGgID()
	{
		TGonggao gonggao=gonggaoDAO.findById(gonggaoId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("gonggao", gonggao);
		
		return ActionSupport.SUCCESS;
	}
	
	public String getGonggaoContent()
	{
		return gonggaoContent;
	}

	public void setGonggaoContent(String gonggaoContent)
	{
		this.gonggaoContent = gonggaoContent;
	}

	public String getFujian()
	{
		return fujian;
	}


	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}


	public TGonggaoDAO getGonggaoDAO()
	{
		return gonggaoDAO;
	}

	public void setGonggaoDAO(TGonggaoDAO gonggaoDAO)
	{
		this.gonggaoDAO = gonggaoDAO;
	}

	public String getGonggaoData()
	{
		return gonggaoData;
	}

	public void setGonggaoData(String gonggaoData)
	{
		this.gonggaoData = gonggaoData;
	}

	public int getGonggaoId()
	{
		return gonggaoId;
	}

	public void setGonggaoId(int gonggaoId)
	{
		this.gonggaoId = gonggaoId;
	}

	public String getGonggaoTitle()
	{
		return gonggaoTitle;
	}

	public void setGonggaoTitle(String gonggaoTitle)
	{
		this.gonggaoTitle = gonggaoTitle;
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
	
}
