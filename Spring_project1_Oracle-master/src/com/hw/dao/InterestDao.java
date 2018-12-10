package com.hw.dao;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hw.dao.mapper.InterestMapper;
import com.hw.dao.mapper.SearchMapper;
import com.hw.frame.Dao;
import com.hw.frame.Search;
import com.hw.vo.Interest;

@Repository("idao")
public class InterestDao implements Dao<Interest,String>, Search<Interest,String>{

	@Autowired
	InterestMapper imapper;
	@Autowired
	SearchMapper smapper;
	@Override
	
	public ArrayList<Interest> search(String v) throws Exception {
		// TODO Auto-generated method stub
		return smapper.selectinterest(v);
	}
	@Override
	public void insert(Interest t) throws Exception {
		imapper.insert(t);
		
	}
	@Override
	public void update(Interest t) throws Exception {
		imapper.update(t);
	}
	@Override
	public void delete(String v) throws Exception {
		imapper.delete(v);
	}
	@Override
	public Interest select(String v) throws Exception {
		return imapper.select(v);
	}
	@Override
	public ArrayList<Interest> select() throws Exception {
		return imapper.selectall();
	}
	
	

	

	
	
	
	
	

	

	
}
