package com.hp.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hp.entity.T_business;
import com.hp.service.T_businessService;
@Controller
@RequestMapping("/T_business")
public class T_businessController {
	@Autowired
	private T_businessService t_businessService;
	//添加
		@RequestMapping("/add")
		public String addUser(T_business t_business,HttpSession session){
			int i = t_businessService.add(t_business);
			if(i>0){
				System.out.println("添加成功");
				session.setAttribute("t_business", t_business);
				return "redirect:/T_business/query";
			}else{
				return "add";
			}
		}
		
		@RequestMapping("/query")
		public String query(HttpSession session){
			ArrayList<T_business> t_businesss = t_businessService.queryAll();
			//将数据存入作用域中
			session.setAttribute("t_businesss", t_businesss);
			return "query";
		}

		//删除
		@RequestMapping("/moveid")
		public String moveid(Integer bId){
			int i = t_businessService.deleteids(bId);
			if(i>0){
				System.out.println("删除成功");
				return "redirect:/T_business/query";
			}else{
				System.out.println("删除失败");
				return "queryAll";
			}
		}
}
