package com.hp.dao;

import java.util.ArrayList;

import com.hp.entity.T_business;


public interface T_businessDao {
	//����
	int insert(T_business t_business);
	//��ѯ
	ArrayList<T_business> selectAll();
	//ɾ��
	public int deleteid(int bId);
}
