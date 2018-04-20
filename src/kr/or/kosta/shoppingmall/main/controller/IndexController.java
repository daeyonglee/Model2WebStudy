package kr.or.kosta.shoppingmall.main.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shoppingmall.common.controller.Controller;
import kr.or.kosta.shoppingmall.common.controller.ModelAndView;
/**
 * index.mall 요청에 대한 처리 클래스(세부컨트롤러)
 * @author 이대용
 *
 */
public class IndexController implements Controller {
	
	// SomeService1 someService1;
	// SomeService2 someService2;
	// SomeService3 someService3;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		ModelAndView mav = new ModelAndView();
		//String message = service.bizMethod();
		String title = "어여와... 처음이지? 일단 회원 가입하고 보자!!!!";
		
		// request 컨텍스트 객체에 View에서 필요로 하는 결과정보 저장
		mav.setView("/main.jsp");
		mav.addObject("title", title);
			
		return mav;
	}

}
