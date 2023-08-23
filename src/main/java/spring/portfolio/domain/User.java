package spring.portfolio.domain;

//==>회원정보를 모델링(추상화/캡슐화)한 Bean

public class User {
	
	//field
	private String userId;
	private String userName;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
}
	
