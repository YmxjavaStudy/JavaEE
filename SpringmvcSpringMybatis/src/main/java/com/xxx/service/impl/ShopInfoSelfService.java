package com.xxx.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xxx.dao.ShopInfoSelfMapper;
import com.xxx.model.SmiShopInfo;
import com.xxx.service.IShopInfoSelfService;
@Service("shopInfoSelfService")
public class ShopInfoSelfService implements IShopInfoSelfService {
	private Logger logger=Logger.getLogger(this.getClass());

@Autowired
public ShopInfoSelfMapper shopInfoSelfMapper;
@Override
public SmiShopInfo getShopById(Integer id) throws Exception {
	
	return shopInfoSelfMapper.getById(id);
}
//增加商店信息
@Override
public void addShopInfo(SmiShopInfo smiShopInfo) throws Exception {
	String shopNo=smiShopInfo.getShopNo();
	String shopName=smiShopInfo.getShopName();
	String shopType=smiShopInfo.getShopType();
	String note=smiShopInfo.getNote();
	shopInfoSelfMapper.addShop(shopNo,shopName,shopType,note);
	
}
//获取所有信息
@Override
public List<SmiShopInfo> showAll() throws Exception {
	
	return shopInfoSelfMapper.selectAll();
}
//批量删除
@Override
public void delByIds(Integer[] ids) throws Exception {
	shopInfoSelfMapper.delShopByIds(ids);
	
}
//单个删除
@Override
public void delById(Integer id) throws Exception {
	shopInfoSelfMapper.delShopById(id);
	
}
//更新一个
@Override
public void updateById(SmiShopInfo smiShopInfo) throws Exception {
	Integer id=smiShopInfo.getId();
	String shopNo=smiShopInfo.getShopNo();
	String shopName=smiShopInfo.getShopName();
	String shopType=smiShopInfo.getShopType();
	String note=smiShopInfo.getNote();
	shopInfoSelfMapper.updateById(id,shopNo,shopName,shopType,note);
	
}
//多个修改
@Override
public void updateByIds(SmiShopInfo shopInfo) throws Exception {
	Integer[] upIds=shopInfo.getIds();
	String shopNo=shopInfo.getShopNo();
	String shopName=shopInfo.getShopName();
	String shopType=shopInfo.getShopType();
	String note=shopInfo.getNote();
	shopInfoSelfMapper.updateByIds(upIds,shopNo,shopName,shopType,note);
	
}

}
