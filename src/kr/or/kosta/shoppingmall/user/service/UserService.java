package kr.or.kosta.shoppingmall.user.service;

import java.util.List;

import kr.or.kosta.shoppingmall.user.domain.User;

/**
 * 회원관리 Service
 * @author 이대용
 *
 */
public interface UserService {

	public void regist(User user) throws RuntimeException;
	
	public User certify(String id, String passwd) throws RuntimeException;
	
	public List<User> list() throws RuntimeException;

	// id로 회원조회
	public User read(String id);
}
