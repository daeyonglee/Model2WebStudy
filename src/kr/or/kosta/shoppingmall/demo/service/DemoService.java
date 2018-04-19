package kr.or.kosta.shoppingmall.demo.service;

import java.util.List;

/**
 * 고객의 요구사항을 반영하여 도메인(개발하고자 하는 업무영역)별 비즈니스 메소드 선언
 * @author 이대용
 *
 */
public interface DemoService {
	
	// 비즈니스 메소드 선언
	public String bizMethod() throws RuntimeException;
	public List<String> bizMethod2() throws RuntimeException;
	
}
