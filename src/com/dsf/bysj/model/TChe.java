package com.dsf.bysj.model;

/**
 * TChe generated by MyEclipse Persistence Tools
 */

public class TChe implements java.io.Serializable
{

	private Integer id;
	private String chexing;
	private String pinpai;
	private String beizhu;

	private String fujian;
	private Integer rizu;
	private String zt;//������----�����//
	private String del;
	
	
	public String getBeizhu()
	{
		return beizhu;
	}
	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
	}
	public String getChexing()
	{
		return chexing;
	}
	public void setChexing(String chexing)
	{
		this.chexing = chexing;
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
	public String getPinpai()
	{
		return pinpai;
	}
	
	public String getZt()
	{
		return zt;
	}
	public void setZt(String zt)
	{
		this.zt = zt;
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