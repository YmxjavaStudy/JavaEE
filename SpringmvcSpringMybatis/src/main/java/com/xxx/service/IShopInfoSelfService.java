package com.xxx.service;

import java.util.List;

import com.xxx.model.SmiShopInfo;

/**
 * 影院店铺信息接口服务
 * 
 * @author author
 * @date 2016/02/16
 */
public interface IShopInfoSelfService {
	/**
	 * 根据店铺的编码和密码查询店铺信息
	 * @param shopNo 店铺编码
	 * @param password 密码
	 * @return 店铺信息
	 * @throws Exception 
	 */
	public SmiShopInfo getShopById(Integer id)throws Exception;
	//增加产品
	public void addShopInfo(SmiShopInfo smiShopInfo)throws Exception;
	//查看所有产品
	public List<SmiShopInfo> showAll()throws Exception;
	//批量删除
	public void delByIds(Integer[] ids) throws Exception;
	//单个删除
	public void delById(Integer id) throws Exception;
	//更新
	public void updateById(SmiShopInfo smiShopInfo) throws Exception;
	public void updateByIds(SmiShopInfo shopInfo) throws Exception;
}
