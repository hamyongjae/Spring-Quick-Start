package com.hw.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hw.frame.Biz;
import com.hw.frame.Category;
import com.hw.frame.Dao;
import com.hw.frame.Search;
import com.hw.vo.Activity;

@Service("abiz")
public class ActivityBiz implements Biz<Activity,String>, Search<Activity,Activity>, Category<Activity,String>{

	@Resource(name="adao")
	Dao<Activity,String> dao;
	@Resource(name="adao")
	Search<Activity,Activity> search;
	@Resource(name="adao")
	Category<Activity,String> category;
	
	
	@Override
	public void register(Activity t) throws Exception {
		dao.insert(t);
	}
	@Override
	public void modify(Activity t) throws Exception {
		dao.update(t);
	}
	@Override
	public void remove(String v) throws Exception {
		dao.delete(v);
	}
	@Override
	public Activity get(String v) throws Exception {
		return dao.select(v);
	}
	@Override
	public ArrayList<Activity> get() throws Exception {
		return dao.select();
	}
	@Override
	public ArrayList<Activity> search(Activity v) throws Exception {
		return search.search(v);
	}
	@Override
	public ArrayList<Activity> searchcate(String v) throws Exception {
		return category.searchcate(v);
	}

	
	
	
	

}
