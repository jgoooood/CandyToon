package candyToon.model.vo;

import java.sql.Date;

public class CandyToon {
	private String userId;
	private String userPw;
	private String userEmail;
	private String userName;
	private Date regiDate;

	
	
	public CandyToon() {
		super();
	}

	public CandyToon(String userId, String userPw, String userEmail, String userName) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userEmail = userEmail;
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserPw() {
		return userPw;
	}


	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public Date getRegiDate() {
		return regiDate;
	}

	public void setRegiDate(Date regiDate) {
		this.regiDate = regiDate;
	}

	@Override
	public String toString() {
		return "CandyToon [아이디=" + userId + ", 비밀번호=" + userPw + ", 이메일=" + userEmail + ", 이름="
				+ userName + ", 가입날짜=" + regiDate + "]";
	}


	
	
	
}
