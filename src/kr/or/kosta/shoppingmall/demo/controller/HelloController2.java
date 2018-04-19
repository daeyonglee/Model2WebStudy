package kr.or.kosta.shoppingmall.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.kosta.shoppingmall.common.controller.Controller;
import kr.or.kosta.shoppingmall.common.controller.ModelAndView;
/**
 * hello.mall 요청에 대한 처리 클래스(세부컨트롤러)
 * @author 이대용
 *
 */
public class HelloController2 implements Controller {
	
	//SomeService service;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		ModelAndView mav = new ModelAndView();
		//String message = service.bizMethod();
		String message = "모델2 기반 웹애플리케이션 개발";
		
		List<String> list = new ArrayList<String>();
		list.add("Doosan 타이거즈");
		list.add("LG 베어즈");
		list.add("Samsung 트윈즈");
		
		HttpSession session = request.getSession();
		session.setAttribute("message", message);
		session.setAttribute("list", list);
		// request 컨텍스트 객체에 View에서 필요로 하는 결과정보 저장
		mav.setView("redirect:/shop/demo/hello.jsp");
		mav.addObject("message", message);
		mav.addObject("list", list);
			
		return mav;
	}

}
