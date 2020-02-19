package com.douzone.guestbook.dao.test;

import java.util.List;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;

public class GuestbookDaoTest {

	public static void main(String[] args) {
//		insertTest();
//		deleteTest(1);
		selectTest();
	}
	
	public static void insertTest() {
		GuestbookVo vo = new GuestbookVo();
		vo.setName("전유진");
		vo.setContents("안녕하세용");
		vo.setPassword("1234");
		new GuestbookDao().insert(vo);
	}
	
	public static void selectTest() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}
	
	public static void deleteTest(int no) {
		GuestbookVo vo = new GuestbookVo();
		vo.setNo(no);
		new GuestbookDao().delete(vo);
	}
	
}
