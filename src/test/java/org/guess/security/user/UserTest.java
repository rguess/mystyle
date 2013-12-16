package org.guess.security.user;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.guess.core.utils.mapper.JsonMapper;
import org.guess.security.model.User;
import org.guess.security.service.UserService;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext.xml")
public class UserTest {

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private UserService userService;

	@Test
	public void add() throws Exception {
		User u = new User();
		User u1 = new User();
		u1.setId(Long.valueOf("123"));
		List<User> users = new ArrayList<User>();
		Map<String,Object> map = new HashMap<String,Object>();
		users.add(u);
		users.add(u1);
		users.add(u);
		users.add(u);
		users.add(u);
		map.put("01", users);
		map.put("02", "hello");
		JsonMapper mapper = new JsonMapper();
		System.out.println(JsonMapper.nonEmptyMapper().toJson(users));
//		System.out.println(mapper.toJson(u));
		System.out.println(mapper.toJson(users));
//		System.out.println(mapper.toJson(map));
		// userService.save(u);
	}

	@Test
	public void testSessionFactory() {
//		System.out.println(sessionFactory.getCurrentSession());
	}
	
	public static void main(String[] args) {
//		int a = 1;
//		int b = 2;
//		b = a + 0 * (a = b);
//		System.out.print(a + ":" + b);
//		System.out.println(StringUtils.substringAfter("2013-01", "-"));
//		System.out.println(Integer.valueOf("01"));
		
		
		List<String> list = calToMonthByMonth("2011-05", "2011-05");
		for (String str : list) {
			System.out.println(str);
		}
		
//		List<String> list2 = CalToMonthByYear("2011", "2010");
//		for (String str : list2) {
//			System.out.println(str);
//		}
	}
	
	/**
	 * 根据开始年份和结束年份计算出要统计的月份
	 * @return
	 */
	private static List<String> CalToMonthByYear(String start,String end){
		List<String> list = new ArrayList<String>();
		for(int i = Integer.valueOf(start);i<=Integer.valueOf(end);i++){
			for (int j = 1; j <=12 ; j++) {
				if(j<10){
					list.add(i+"-0"+j);
				}else{
					list.add(i+"-"+j);
				}
			}
		}
		return list;
	}
	
	/**
	 * 根据开始月份和技术月份计算出要统计的月份
	 */
	private static List<String> calToMonthByMonth(String start,String end){
		List<String> list = new ArrayList<String>();
		int startYear = Integer.valueOf(StringUtils.substringBefore(start, "-"));
		int startMonth = Integer.valueOf(StringUtils.substringAfter(start, "-"));
		int endYear = Integer.valueOf(StringUtils.substringBefore(end, "-"));
		int endMonth = Integer.valueOf(StringUtils.substringAfter(end, "-"));
		
		//年份相同
		if(startYear == endYear){
			for (int i = startMonth; i <= endMonth; i++) {
				if(i<10){
					list.add(startYear+"-0"+i);
				}else{
					list.add(startYear+"-"+i);
				}
			}
			return list;
		}
		
		for(int i = startMonth;i<=12;i++){
			if(i<10){
				list.add(startYear+"-0"+i);
			}else{
				list.add(startYear+"-"+i);
			}
		}
		for (int i = startYear+1; i < endYear; i++) {
			for (int j = 1; j <= 12; j++) {
				if(j<10){
					list.add(i+"-0"+j);
				}else{
					list.add(i+"-"+j);
				}
			}
		}
		for (int i = 1; i <= endMonth; i++) {
			if(i<10){
				list.add(endYear+"-0"+i);
			}else{
				list.add(endYear+"-"+i);
			}
		}
		
		return list;
	}

}
