package kr.or.kosta.shoppingmall.user.service;

import java.util.List;

import kr.or.kosta.shoppingmall.common.dao.DaoFactory;
import kr.or.kosta.shoppingmall.user.dao.JdbcUserDao;
import kr.or.kosta.shoppingmall.user.dao.UserDao;
import kr.or.kosta.shoppingmall.user.domain.User;

/**
 * 회원관리 Service 구현
 * @author 이대용
 *
 */
public class UserServiceImpl implements UserService{

	private UserDao dao = (UserDao)DaoFactory.getInstance().getDao(JdbcUserDao.class);
	
	@Override
	public void regist(User user) throws RuntimeException {
		dao.create(user);
	}

	@Override
	public User certify(String id, String passwd) throws RuntimeException {
		return dao.isMember(id, passwd);
	}

	@Override
	public List<User> list() throws RuntimeException {
		return dao.listAll();
	}

}
