package com.hw.dao;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hw.dao.mapper.SearchMapper;
import com.hw.dao.mapper.UsersMapper;
import com.hw.frame.Dao;
import com.hw.frame.Search;
import com.hw.vo.Users;

@Repository("udao")
public class UsersDao implements Dao<Users,String>, Search<Users,String>{

	@Autowired
	UsersMapper umapper;
	@Autowired
	SearchMapper smapper;
	
	
	@Override
	public ArrayList<Users> search(String v) throws Exception {
		return smapper.selectuser(v);
	}
	@Override
	public void insert(Users t) throws Exception {
		umapper.insert(t);
	}
	@Override
	public void update(Users t) throws Exception {
		umapper.update(t);
		
	}
	@Override
	public void delete(String v) throws Exception {
		umapper.delete(v);
		
	}
	@Override
	public Users select(String v) throws Exception {
		// TODO Auto-generated method stub
		return umapper.select(v);
	}
	@Override
	public ArrayList<Users> select() throws Exception {
		// TODO Auto-generated method stub
		return umapper.selectall();
	}
	
	

	
	
	
	
	

	

	
}
