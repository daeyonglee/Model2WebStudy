package kr.or.kosta.shoppingmall.demo.dao;

import java.util.List;

public interface DemoDao {

	public void create() throws RuntimeException;
	public void update() throws RuntimeException;
	public void delete() throws RuntimeException;
	public String read() throws RuntimeException;
	public List<String> list() throws RuntimeException;
}
