package com.hp.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hp.dao.T_businessDao;
import com.hp.entity.T_business;

@Service
public class T_businessServiceImpl implements T_businessService{
@Autowired
private T_businessDao t_businessDao;
	
	@Override
	public int add(T_business t_business) {
		// TODO 自动生成的方法存根
		int i = t_businessDao.insert(t_business);
		return i;
	}

	@Override
	public ArrayList<T_business> queryAll() {
		// TODO 自动生成的方法存根
		ArrayList<T_business> t_business = t_businessDao.selectAll();
		return t_business;
	}

	@Override
	public int deleteids(int bId) {
		// TODO 自动生成的方法存根
		int i = t_businessDao.deleteid(bId);
		return i;
	}

}
