package com.dsf.bysj.model;

/**
 * TYuyue entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TYuyue implements java.io.Serializable {

	private Integer id;
	private Integer cheId;
	private String lianxi;
	private String beizhu;
	
	private String yuyueshi;
	private String zbhcsj;
	private TChe che;

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

	public TChe getChe()
	{
		return che;
	}

	public void setChe(TChe che)
	{
		this.che = che;
	}
	
	
}