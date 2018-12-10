package com.hw.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hw.frame.Biz;
import com.hw.frame.Dao;
import com.hw.frame.Search;
import com.hw.vo.Interest;

@Service("ibiz")
public class InterestBiz implements Biz<Interest,String>, Search<Interest,String>{

	@Resource(name="idao")
	Dao<Interest,String> dao;
	@Resource(name="idao")
	Search<Interest,String> search;
	
	@Override
	public ArrayList<Interest> search(String v) throws Exception {
		return search.search(v);
	}
	@Override
	public void register(Interest t) throws Exception {
		dao.insert(t);
	}
	@Override
	public void modify(Interest t) throws Exception {
		dao.update(t);
	}
	@Override
	public void remove(String v) throws Exception {
		dao.delete(v);
	}
	@Override
	public Interest get(String v) throws Exception {
		return dao.select(v);
	}
	@Override
	public ArrayList<Interest> get() throws Exception {
		// TODO Auto-generated method stub
		return dao.select();
	}

	
	

}
