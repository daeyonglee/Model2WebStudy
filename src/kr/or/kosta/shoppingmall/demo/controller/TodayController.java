package kr.or.kosta.shoppingmall.demo.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shoppingmall.common.controller.Controller;
import kr.or.kosta.shoppingmall.common.controller.ModelAndView;
/**
 * today.mall 요청에 대한 처리 클래스(세부컨트롤러)
 * @author 이대용
 *
 */
public class TodayController implements Controller {
	
	//SomeService service;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		ModelAndView mav = new ModelAndView();
		//String message = service.bizMethod();
		Calendar today = Calendar.getInstance();
		
		// request 컨텍스트 객체에 View에서 필요로 하는 결과정보 저장
		mav.setView("/demo/today.jsp");
		mav.addObject("today", today);
			
		return mav;
	}

}
