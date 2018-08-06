package com.dsf.bysj.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dsf.bysj.dao.TCheDAO;
import com.dsf.bysj.dao.TZulinDAO;
import com.dsf.bysj.model.TChe;
import com.dsf.bysj.model.TZulin;
import com.opensymphony.xwork2.ActionSupport;

public class zulinAction extends ActionSupport
{
	private Integer id;
	private int cheId;
	private int userId;
	private String kaishishijian;
	
	private Integer yajin;
	private String beizhu;
	private String shifouhuan;
	private String jieshushijian;
	
	private Integer feiyong;
	
	private TCheDAO cheDAO;
	private TZulinDAO zulinDAO;
	
	public String zulinAdd()
	{
		TZulin zulin=new TZulin();
		
		zulin.setCheId(cheId);
		zulin.setUserId(userId);
		zulin.setKaishishijian(kaishishijian);
		zulin.setYajin(yajin);
		
		zulin.setBeizhu(beizhu);
		zulin.setJieshushijian("");
		zulin.setShifouhuan("未还");
		zulin.setFeiyong(0);
		
		zulinDAO.save(zulin);
		
		update_che_zt("已租出",cheId);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "租赁信息添加成功");
		return "msg";
	}
	
	
	public String zulinMana()
	{
		String sql="from TZulin order by shifouhuan";
		List zulinList=zulinDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<zulinList.size();i++)
		{
			TZulin zulin=(TZulin)zulinList.get(i);
			zulin.setChe(cheDAO.findById(zulin.getCheId()));
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zulinList", zulinList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String zulinDel()
	{
		TZulin zulin=zulinDAO.findById(id);
		zulinDAO.delete(zulin);
		
		update_che_zt("空闲中",zulin.getCheId());
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "租赁信息删除成功");
		return "msg";
	}

	
		
	
	public String huanche()
	{
		TZulin zulin=zulinDAO.findById(id);
		zulin.setShifouhuan("已还");
		zulin.setJieshushijian(jieshushijian);
		zulin.setFeiyong(feiyong);
		
		update_che_zt("空闲中",zulin.getCheId());
		zulinDAO.attachDirty(zulin);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "还车完毕");
		return "msg";
	}

	
	
	
	
	public void update_che_zt(String zt,Integer cheId)
	{
		String sql="update TChe set zt=? where id=?";
		Object[] c={zt,cheId};
		
		cheDAO.getHibernateTemplate().bulkUpdate(sql,c);
	}


	public Integer getId()
	{
		return id;
	}


	public void setId(Integer id)
	{
		this.id = id;
	}


	public int getCheId()
	{
		return cheId;
	}


	public void setCheId(int cheId)
	{
		this.cheId = cheId;
	}


	public int getUserId()
	{
		return userId;
	}


	public void setUserId(int userId)
	{
		this.userId = userId;
	}


	public String getKaishishijian()
	{
		return kaishishijian;
	}


	public void setKaishishijian(String kaishishijian)
	{
		this.kaishishijian = kaishishijian;
	}


	public Integer getYajin()
	{
		return yajin;
	}


	public void setYajin(Integer yajin)
	{
		this.yajin = yajin;
	}


	public String getBeizhu()
	{
		return beizhu;
	}


	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
	}


	public String getShifouhuan()
	{
		return shifouhuan;
	}


	public void setShifouhuan(String shifouhuan)
	{
		this.shifouhuan = shifouhuan;
	}


	public String getJieshushijian()
	{
		return jieshushijian;
	}


	public void setJieshushijian(String jieshushijian)
	{
		this.jieshushijian = jieshushijian;
	}


	public Integer getFeiyong()
	{
		return feiyong;
	}


	public void setFeiyong(Integer feiyong)
	{
		this.feiyong = feiyong;
	}


	public TCheDAO getCheDAO()
	{
		return cheDAO;
	}


	public void setCheDAO(TCheDAO cheDAO)
	{
		this.cheDAO = cheDAO;
	}


	public TZulinDAO getZulinDAO()
	{
		return zulinDAO;
	}


	public void setZulinDAO(TZulinDAO zulinDAO)
	{
		this.zulinDAO = zulinDAO;
	}

}
