package org.guess.security.user;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.guess.core.utils.DateUtil;

public class StaticTest {

	private int a;
	private int b;
	
	public StaticTest() {
		System.out.println("co");
	}
	
	{
		a = 1;
		System.out.println("a = 1");
	}
	
	{
		b = 2;
		System.out.println("b = 1");
	}
	
	public static List<String> calToTimes(String start,String end) throws Exception{
		List<String> list = new ArrayList<String>();
		String fstMoney = DateUtil.getMonday(start);
		String temp = fstMoney;
		while(DateUtil.parse(temp).before(DateUtil.parse(end))){
			String s = DateUtil.getMonday(temp).replaceAll("-", "");
			String e = DateUtil.getSunDay(temp).replace("-", "");
			String str = s+"-"+e;
			list.add(str);
			temp = DateUtil.getTomrrow(DateUtil.parse(DateUtil.getSunDay(temp)));
		}
		return list;
	}
	
	public static boolean dateBetween(Date date,String time) throws Exception{
		DateFormat df = new SimpleDateFormat("yyyyMMdd");
		String[] times = time.split("-");
		Date start = df.parse(times[0]);
		Date end = df.parse(times[1]);
		if((date.before(end) || DateUtil.format(date).equals(DateUtil.format(end))) && (date.after(start) || DateUtil.format(date).equals(DateUtil.format(start)))){
			return true;
		}
		return false;
	}
	
	public static void main(String[] args) throws Exception {
//		System.out.println(new Date().before(DateUtil.parse("2014-01-14")));
//		System.out.println(DateUtil.parseFormat("yyyy-MM-dd"));
//		List<String> strs = calToTimes("2014-01-01","2014-12-31");
//		for (String str : strs) {
//			System.out.println(str);
//		}
//		System.out.println(dateBetween(DateUtil.parse("2014-01-01"), "20140101-20140202"));
		
		/*Calendar calendar = new GregorianCalendar();
		calendar.setTime(DateUtil.parse("2013-05-30"));
		calendar.get(Calendar.MONTH);
		System.out.println(calendar.get(Calendar.MONTH)); */
		BooleanEnum a = BooleanEnum.valueOf("TRUE");
		System.out.println(a.getInfo());
		System.out.println(BooleanEnum.values());
		
		String a1 = "1";
		String a2 = "2";
		System.out.println(a1=a1+=a2);
	
	}
}
