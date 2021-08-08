package com.hp.service;

import java.util.ArrayList;

import com.hp.entity.T_business;


public interface T_businessService {
	int add(T_business t_business);
	ArrayList<T_business> queryAll();
	//É¾³ý
	public int deleteids(int bId);
}
