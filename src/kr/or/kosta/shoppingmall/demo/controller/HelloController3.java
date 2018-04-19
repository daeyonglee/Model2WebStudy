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
import kr.or.kosta.shoppingmall.demo.service.DemoService;
import kr.or.kosta.shoppingmall.demo.service.DemoServiceImpl;
public class HelloController3 implements Controller {
	
	DemoService demoService = new DemoServiceImpl();
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		ModelAndView mav = new ModelAndView();
		String message = demoService.bizMethod();
		
		List<String> list = demoService.bizMethod2();
		
		// request 컨텍스트 객체에 View에서 필요로 하는 결과정보 저장
		mav.setView("/demo/hello3.jsp");
		mav.addObject("message", message);
		mav.addObject("list", list);
			
		return mav;
	}

}
