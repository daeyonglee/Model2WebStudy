package kr.or.kosta.shoppingmall.demo.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class JdbcDemoDao implements DemoDao {
	
	private DataSource dataSource;
	
	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public void create() throws RuntimeException {
		// TODO Auto-generated method stub

	}

	@Override
	public void update() throws RuntimeException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete() throws RuntimeException {
		// TODO Auto-generated method stub

	}

	@Override
	public String read() throws RuntimeException {
		// DB처 처리 완료
		return "Model2 개발 연습입니다.";
	}

	@Override
	public List<String> list() throws RuntimeException {
		List<String> list = new ArrayList<String>();
		list.add("Doosan 타이거즈");
		list.add("LG 베어즈");
		list.add("Samsung 트윈즈");
		return list;
	}
}
