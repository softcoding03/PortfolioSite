package spring.portfolio.user;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import spring.portfolio.domain.User;

@Mapper
public interface UserDao {
	public void addUser(User user)throws Exception;
	
}
