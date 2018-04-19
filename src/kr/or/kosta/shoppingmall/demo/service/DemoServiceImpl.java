package kr.or.kosta.shoppingmall.demo.service;

import java.util.ArrayList;
import java.util.List;

import kr.or.kosta.shoppingmall.common.dao.DaoFactory;
import kr.or.kosta.shoppingmall.demo.dao.DemoDao;
import kr.or.kosta.shoppingmall.demo.dao.JdbcDemoDao;

/**
 * 고객의 요구사항을 반영하여 도메인(개발하고자 하는 업무영역)별 비즈니스 메소드 선언
 * 복잡한 트랜잭션 및 예외 처리
 * @author 이대용
 *
 */
public class DemoServiceImpl implements DemoService {

	DemoDao dao = (DemoDao)DaoFactory.getInstance().getDao(JdbcDemoDao.class);
	
	@Override
	public String bizMethod() throws RuntimeException {
		return dao.read();
	}

	@Override
	public List<String> bizMethod2() throws RuntimeException {
		List<String> list = dao.list();
		return list;
	}

}
