package com.hw.dao;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hw.dao.mapper.ActivityMapper;
import com.hw.dao.mapper.CategoryMapper;
import com.hw.dao.mapper.SearchMapper;
import com.hw.frame.Dao;
import com.hw.frame.Search;
import com.hw.frame.Category;
import com.hw.vo.Activity;

@Repository("adao")
public class ActivityDao implements Dao<Activity,String>, Search<Activity,Activity>, Category<Activity,String>{

	@Autowired
	ActivityMapper amapper;
	@Autowired
	SearchMapper smapper;
	@Autowired
	CategoryMapper cmapper;
	
	
	
	@Override
	public ArrayList<Activity> searchcate(String v) throws Exception {
		// TODO Auto-generated method stub
		return cmapper.selectactivity(v);
	}
	
	@Override
	public ArrayList<Activity> search(Activity activity) throws Exception {
		return smapper.selectactivity(activity);
	}
	@Override
	public void insert(Activity t) throws Exception {
		amapper.insert(t);
	}
	@Override
	public void update(Activity t) throws Exception {
		amapper.update(t);
	}

	@Override
	public ArrayList<Activity> select() throws Exception {
		return amapper.selectall();
	}
	@Override
	public void delete(String v) throws Exception {
		amapper.delete(v);
	}
	@Override
	public Activity select(String v) throws Exception {
		return amapper.select(v);
	}



	
	
	
	
	
	
	
	

	

	
}
