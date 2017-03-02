package com.xxx.dao;
/**
 * 影院店铺信息映射关系 数据实例化接口
 * 
 * @author author
 * @date 2016/02/16
 */

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xxx.model.SmiShopInfo;

public interface ShopInfoSelfMapper {

	/**
	 * 根据门店编码和密码获取门店信息
	 * 
	 * @param password
	 *            门店密码
	 * @param shopNo
	 *            门店编码
	 */
	public SmiShopInfo getById(@Param("id") Integer id);
	//增加
	public void addShop(
			@Param("shopNo") String shopNo,
			@Param("shopName") String shopName,
			@Param("shopType") String shopType,
			@Param("note") String note);
	//查看所有
	public List<SmiShopInfo> selectAll();
	//单个删除
	public void delShopById(@Param("id") Integer id);
	//批量删除
	public void delShopByIds(@Param("ids") Integer[] ids);
	//修改一个
	public void updateById(
			@Param("id") Integer id,
			@Param("shopNo") String shopNo,
			@Param("shopName") String shopName,
			@Param("shopType") String shopType,
			@Param("note") String note);
	public void updateByIds(
			@Param("ids") Integer[] ids,
			@Param("shopNo") String shopNo,
			@Param("shopName") String shopName,
			@Param("shopType") String shopType,
			@Param("note") String note);
			
}
