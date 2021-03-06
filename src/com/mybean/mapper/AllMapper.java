package com.mybean.mapper;

import java.util.List;

import com.mybean.data.All;


public interface AllMapper {
	public void add(All all);		//增
	public void delete(int uId);		//删
	public void update(All all);	//改
	public All get(int uId);			//查
	public List<All> list();			//获取所有
}
