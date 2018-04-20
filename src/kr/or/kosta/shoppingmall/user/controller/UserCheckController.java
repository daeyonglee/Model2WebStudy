package kr.or.kosta.shoppingmall.user.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shoppingmall.common.controller.Controller;
import kr.or.kosta.shoppingmall.common.controller.ModelAndView;
import kr.or.kosta.shoppingmall.user.domain.User;
import kr.or.kosta.shoppingmall.user.service.UserService;
import kr.or.kosta.shoppingmall.user.service.UserServiceImpl;
/**
 *
 * /user/list.mall 요청에 대한 처리 클래스(세부컨트롤러)
 * @author 이대용
 *
 */
public class UserCheckController implements Controller {
	
	private UserService userService = new UserServiceImpl();
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		String id = request.getParameter("id");
		
		User user = userService.read(id);
		
		response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
		
	    try {
	    	if (user != null) {
	    		response.getWriter().write("true");
	    	} else {
	    		response.getWriter().write("false");
	    	}
	    } catch (IOException e) {
	    	e.printStackTrace();
	    }	
		
		return null;
	}
}
