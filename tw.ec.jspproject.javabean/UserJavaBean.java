package tw.ec.jspproject.javabean;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class UserJavaBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private String userName = "";
	private String userPassword = "";
	private String userPhone = "";
	private String userEmail = "";
	private Connection conn;

	public UserJavaBean() {

	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	public Connection getConnection()
	{
		try {
			InitialContext context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/connectMySQLJdbc/OrderSystem");
			conn = ds.getConnection();
			return conn;
		} catch (NamingException | SQLException e) {
			return null;
		}
	}
	
	public void closeConn() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 註冊
	public void signUp() throws SQLException {
		String sqlStr = "insert into ecdb.user(userName,userPassword,userPhone,userEmail) Values(?,?,?,?)";
		PreparedStatement state = conn.prepareStatement(sqlStr);
		state.setString(1, userName);
		state.setString(2, userPassword);
		state.setString(3, userPhone);
		state.setString(4, userEmail);
		state.executeUpdate();
	}
	
	// 編輯
	public void userUpdate() throws SQLException {
		String sqlstr = "Update ecdb.user Set userPassword=?, userPhone=?, userEmail=? Where userName=?";
		PreparedStatement state = conn.prepareStatement(sqlstr);
		state.setString(1, userPassword);
		state.setString(2, userPhone);
		state.setString(3, userEmail);
		state.setString(4, userName);
		state.executeUpdate();
	}
	
}
