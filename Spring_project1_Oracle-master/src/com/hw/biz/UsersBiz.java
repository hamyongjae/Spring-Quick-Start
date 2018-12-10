package com.hw.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hw.frame.Biz;
import com.hw.frame.Dao;
import com.hw.frame.Search;
import com.hw.vo.Users;

@Service("ubiz")
public class UsersBiz implements Biz<Users,String>, Search<Users,String>{

	@Resource(name="udao")
	Dao<Users,String> dao;
	@Resource(name="udao")
	Search<Users,String> search;
	
	@Override
	public ArrayList<Users> search(String v) throws Exception {
		return search.search(v);
	}
	@Override
	public void register(Users t) throws Exception {
		dao.insert(t);
	}
	@Override
	public void modify(Users t) throws Exception {
		dao.update(t);
		
	}
	@Override
	public void remove(String v) throws Exception {
		dao.delete(v);
	}
	@Override
	public Users get(String v) throws Exception {
		return dao.select(v);
	}
	@Override
	public ArrayList<Users> get() throws Exception {
		return dao.select();
	}

	

}
