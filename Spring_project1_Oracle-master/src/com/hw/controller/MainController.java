package com.hw.controller;

import java.util.ArrayList;
import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.hw.biz.ActivityBiz;
import com.hw.biz.InterestBiz;
import com.hw.frame.Biz;
import com.hw.util.FileSave;
import com.hw.vo.Activity;
import com.hw.vo.Interest;
import com.hw.vo.Users;

@Controller
public class MainController {

	@Resource(name = "ubiz")
	Biz<Users, String> uservice;
	
	@Resource(name = "abiz")
	ActivityBiz aservice;

	@Resource(name="ibiz")
	InterestBiz iservice;
	
	@RequestMapping("/main.hw")
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		ArrayList<Activity> list = null;
		
	      try {
	         list = aservice.get();
	      } catch (Exception e1) {
	         // TODO Auto-generated catch block
	         e1.printStackTrace();
	      }
	      mv.addObject("activitylist",list);
	      return mv;
	}

	@RequestMapping("/login.hw")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "login");
		return mv;
	}

	@RequestMapping("/duplicatedID.hw")
	@ResponseBody
	public int duplicatedID(@RequestParam("id") String id) {
		System.out.println(id);
		try {
			System.out.println(uservice.get(id));
			if(id.equals(uservice.get(id).getId()))
			return 1;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	@RequestMapping("/loginimpl.hw")
	   public ModelAndView loginimpl(HttpServletRequest request) {
	      
	      ArrayList<Activity> list = null;
	      try {
	         list = aservice.get();
	      } catch (Exception e1) {
	         // TODO Auto-generated catch block
	         e1.printStackTrace();
	      }
	      
	      String id = request.getParameter("id");
	      String pwd = request.getParameter("pwd");
	      
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("main");
	      mv.addObject("activitylist",list);
	      HttpSession session = request.getSession();
	      try {
	         Users user=uservice.get(id);
	         System.out.println("loginimpl" + user);
	         if (user.getId().equals(id) && user.getPwd().equals(pwd)) {
	            session.setAttribute("loginid", id);
	            session.setAttribute("loginstate", "success");
	            
	         } else {
	            session.setAttribute("loginstate", "fail");
	            mv.addObject("centerpage", "login");
	         }
	      } catch (Exception e) {
	         session.setAttribute("loginstate", "fail");
	         mv.addObject("centerpage", "login");
	         e.printStackTrace();
	      }
	      
	      return mv;

	}

	@RequestMapping("/maptest.hw")
	public ModelAndView maptest() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "map/maptest");
		return mv;
	}

	@RequestMapping("/register.hw")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "register");
		return mv;
	}

	@RequestMapping("/registerimpl.hw")
	public ModelAndView registerimpl(HttpServletRequest request) {
		MultipartHttpServletRequest multipartRequest=(MultipartHttpServletRequest)request;
		MultipartFile mp = multipartRequest.getFile("img");
		String imgname = mp.getOriginalFilename();
		HttpSession session = request.getSession();

		//상대경로로 가져오기
	    String path = session.getServletContext().getRealPath("/");
	    path += "img/";
	    System.out.println(path);
	    
		FileSave.save(path, mp, imgname);
		Users users=new Users();
		users.setId(request.getParameter("id"));
		users.setPwd(request.getParameter("pwd"));
		users.setAddr(request.getParameter("addr"));
		users.setUser_lat(request.getParameter("user_lat"));
		users.setUser_long(request.getParameter("user_long"));
		users.setName(request.getParameter("name"));
		users.setPhone_num(request.getParameter("phone_num"));
		users.setPro_yn(request.getParameter("pro_yn"));
		users.setBirth(request.getParameter("birth"));
		users.setImg(imgname);
		System.out.println(users+" Inserted");

		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		try {
			uservice.register(users);
			mv.addObject("centerpage", "login");
		} catch (Exception e1) {
			mv.addObject("centerpage", "main");
			e1.printStackTrace();
		}

		
		return mv;
	}
	
	
	@RequestMapping("/activityimpl.hw")
	public ModelAndView activityimpl(HttpServletRequest request) {
		MultipartHttpServletRequest multipartRequest=(MultipartHttpServletRequest)request;
		MultipartFile mp1 = multipartRequest.getFile("act_img1");
		MultipartFile mp2 = multipartRequest.getFile("act_img2");
		MultipartFile mp3 = multipartRequest.getFile("act_img3");
		MultipartFile mp4 = multipartRequest.getFile("act_img4");
		String imgname1 = mp1.getOriginalFilename();
		String imgname2 = mp2.getOriginalFilename();
		String imgname3 = mp3.getOriginalFilename();
		String imgname4 = mp4.getOriginalFilename();
		HttpSession session = request.getSession();

		//상대경로로 가져오기
	    String path = session.getServletContext().getRealPath("/");
	    path += "img/activity/";
	    System.out.println(path);
		FileSave.save(path, mp1, imgname1);
		FileSave.save(path, mp2, imgname2);
		FileSave.save(path, mp3, imgname3);
		FileSave.save(path, mp4, imgname4);
		Activity activity = new Activity();
		
		
		activity.setCat_no(Integer.parseInt(request.getParameter("cat_no")));
		activity.setTitle(request.getParameter("title"));
		activity.setAddr(request.getParameter("addr"));
		activity.setAddr_lat(request.getParameter("addr_lat"));
		activity.setAddr_long(request.getParameter("addr_long"));
		activity.setAct_img1(imgname1);
		activity.setAct_img2(imgname2);
		activity.setAct_img3(imgname3);
		activity.setAct_img4(imgname4);
		activity.setAct_phone(request.getParameter("act_phone"));
		activity.setDetail(request.getParameter("detail"));
		activity.setId(request.getParameter("id"));
		activity.setSt_date(request.getParameter("st_date"));
		activity.setEnd_date(request.getParameter("end_date"));
		activity.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		activity.setState("active");
		activity.setGen_no(Integer.parseInt(request.getParameter("gender")));
		
		//System.out.println(activity);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		ArrayList<Activity> list = null;
		try {
			aservice.register(activity);

			
			switch(request.getParameter("cat_no")) {
			case "1": 
				list = aservice.searchcate("1");
				mv.addObject("centerpage", "travel");
				
				break;
			case "2": 
				list = aservice.searchcate("2");
				mv.addObject("centerpage", "sports");
				
				break;
			case "3": 
				list = aservice.searchcate("3");
				mv.addObject("centerpage", "culture");
				break;
			case "4": 
				list = aservice.searchcate("4");
				mv.addObject("centerpage", "dining");
				break;
			}
			System.out.println("try  "+activity);
		} catch (Exception e1) {
			e1.printStackTrace();
			System.out.println("fail");
		}
		mv.addObject("activitylist",list);

		
		return mv;
	}
	
	

	@RequestMapping("/logout.hw")
	public ModelAndView logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session != null) {
			session.invalidate();
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "center");
		return mv;
	}


	@RequestMapping("/travel.hw")
	public ModelAndView travel() {
		ModelAndView mv = new ModelAndView();
		ArrayList<Activity> list = null;
		try {
			list = aservice.searchcate("1");
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		mv.setViewName("main");
		mv.addObject("activitylist",list);
		mv.addObject("centerpage","travel");
		return mv;
	}
	
	
	@RequestMapping("/sports.hw")
	public ModelAndView sports() {
		ModelAndView mv = new ModelAndView();
		ArrayList<Activity> list = null;
		try {
			list = aservice.searchcate("2");
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		mv.setViewName("main");
		mv.addObject("activitylist",list);
		mv.addObject("centerpage", "sports");
		return mv;
	}
	
	@RequestMapping("/culture.hw")
	public ModelAndView culture() {
		ModelAndView mv = new ModelAndView();
		ArrayList<Activity> list = null;
		try {
			list = aservice.searchcate("3");
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		mv.setViewName("main");
		mv.addObject("activitylist",list);
		mv.addObject("centerpage", "culture");
		return mv;
	}
	@RequestMapping("/dining.hw")
	public ModelAndView dining() {
		ModelAndView mv = new ModelAndView();
		ArrayList<Activity> list = null;
		try {
			list = aservice.searchcate("4");
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		mv.setViewName("main");
		mv.addObject("activitylist",list);
		mv.addObject("centerpage", "dining");
		return mv;
	}
	
	@RequestMapping("/search.hw")
	public ModelAndView search(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		Activity activity = new Activity();
		activity.setTitle(request.getParameter("title"));
		activity.setSt_date(request.getParameter("st_date"));
		activity.setEnd_date(request.getParameter("end_date"));
		return mv;
	}
	@RequestMapping("/travel_search.hw")
	public ModelAndView travel_search(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Activity activity = new Activity();
		ArrayList<Activity> list = null;
		System.out.println(request.getParameter("id"));
		try {
			activity.setAddr_lat(uservice.get(request.getParameter("id")).getUser_lat());
			activity.setAddr_long(uservice.get(request.getParameter("id")).getUser_long());
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		activity.setCat_no(Integer.parseInt(request.getParameter("cat_no")));
		activity.setTitle(request.getParameter("keyword"));
		activity.setSt_date(request.getParameter("st_date_search"));
		activity.setEnd_date(request.getParameter("end_date_search"));
		System.out.println(activity);
		try {
			list=aservice.search(activity);
			System.out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("main");
		mv.addObject("activitylist",list);
		mv.addObject("centerpage","travel");
		return mv;
	}
	@RequestMapping("/sports_search.hw")
	public ModelAndView sports_search(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Activity activity = new Activity();
		ArrayList<Activity> list = null;
		System.out.println(request.getParameter("id"));
		try {
			activity.setAddr_lat(uservice.get(request.getParameter("id")).getUser_lat());
			activity.setAddr_long(uservice.get(request.getParameter("id")).getUser_long());
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		activity.setCat_no(Integer.parseInt(request.getParameter("cat_no")));
		activity.setTitle(request.getParameter("keyword"));
		activity.setSt_date(request.getParameter("st_date_search"));
		activity.setEnd_date(request.getParameter("end_date_search"));
		System.out.println(activity);
		try {
			list=aservice.search(activity);
			System.out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("main");
		mv.addObject("activitylist",list);
		mv.addObject("centerpage","sports");
		return mv;
	}
	@RequestMapping("/culture_search.hw")
	public ModelAndView culture_search(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Activity activity = new Activity();
		ArrayList<Activity> list = null;
		System.out.println(request.getParameter("id"));
		try {
			activity.setAddr_lat(uservice.get(request.getParameter("id")).getUser_lat());
			activity.setAddr_long(uservice.get(request.getParameter("id")).getUser_long());
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		activity.setCat_no(Integer.parseInt(request.getParameter("cat_no")));
		activity.setTitle(request.getParameter("keyword"));
		activity.setSt_date(request.getParameter("st_date_search"));
		activity.setEnd_date(request.getParameter("end_date_search"));
		System.out.println(activity);
		try {
			list=aservice.search(activity);
			System.out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("main");
		mv.addObject("activitylist",list);
		mv.addObject("centerpage","culture");
		return mv;
	}
	@RequestMapping("/dining_search.hw")
	public ModelAndView dining_search(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Activity activity = new Activity();
		ArrayList<Activity> list = null;
		System.out.println(request.getParameter("id"));
		try {
			activity.setAddr_lat(uservice.get(request.getParameter("id")).getUser_lat());
			activity.setAddr_long(uservice.get(request.getParameter("id")).getUser_long());
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		activity.setCat_no(Integer.parseInt(request.getParameter("cat_no")));
		activity.setTitle(request.getParameter("keyword"));
		activity.setSt_date(request.getParameter("st_date_search"));
		activity.setEnd_date(request.getParameter("end_date_search"));
		System.out.println(activity);
		try {
			list=aservice.search(activity);
			System.out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("main");
		mv.addObject("activitylist",list);
		mv.addObject("centerpage","dining");
		return mv;
	}
	
	@RequestMapping("/review.hw")
	public ModelAndView review() {
		ModelAndView mv = new ModelAndView();
		try {
			System.out.println(aservice.get("12"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.setViewName("main");
		
		return mv;
	}
	
	@SuppressWarnings("null")
	   @RequestMapping("/wishlist.hw")
	   public ModelAndView wishlist(HttpServletRequest request) {
	      System.out.println("test");
	      ModelAndView mv = new ModelAndView();
	      
	      ArrayList<Activity> alist = new ArrayList<Activity>();
	      Iterator<Activity> atr=null;
	      
	      ArrayList<Interest> ilist = null;
	      Iterator<Interest> itr=null;
	      System.out.println(request.getParameter("wishlist_id"));
	      try {
	         ilist = iservice.search(request.getParameter("wishlist_id"));
	         //ilist = iservice.get();
	         itr = ilist.iterator();
	      } catch (Exception e1) {
	         // TODO Auto-generated catch block
	         e1.printStackTrace();
	      }

	      while(itr.hasNext())
	      {
	         try {
	            alist.add(aservice.get(itr.next().getAct_no()));
	         } catch (Exception e) {
	            e.printStackTrace();
	         }
	      }

	      mv.setViewName("main");
	      mv.addObject("wishlist",alist);
	      mv.addObject("centerpage","wishlist");
	      
	      return mv;
	   }
	   
	   @SuppressWarnings("null")
	   @RequestMapping("/wishlistadd.hw")
	   public ModelAndView wishlistadd(HttpServletRequest request) {
	      ModelAndView mv = new ModelAndView();
	      
	      Activity activity = null;
	      Interest interest = new Interest();
	      try {
	         activity = aservice.get(request.getParameter("wishlist_act_no"));
	      } catch (Exception e1) {
	         e1.printStackTrace();
	      }
	      
	      interest.setAct_no(activity.getAct_no());
	      interest.setId(request.getParameter("wishlist_id"));
	      try {
	         iservice.register(interest);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      mv.setViewName("main");
	      return mv;
	   }
	   
	   @RequestMapping("/wishlistremove.hw")
	   public ModelAndView wishlistremove(HttpServletRequest request) {
	      ModelAndView mv = new ModelAndView();
	      
	      System.out.println(request.getParameter("wishdelete_act_no"));
	      try {
	         iservice.remove(request.getParameter("wishdelete_act_no"));
	         System.out.println("remove success");
	      } catch (Exception e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	         System.out.println("remove fail");
	      }
	      
	      mv.setViewName("main");
	      mv.addObject("centerpage","wishlist");
	      return mv;
	   }
	
}
