package tw.ec.jspproject.javabean;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class FindstoreJavaBean implements Serializable {
	private static final long serialVersionUID = 1L;
//	private static final long serialVersionUID = 1L;
//	private String customer = "XXX";
//	private String customerNumber = "12345678";
//	private String customerDirth ="2017/02/24";
//	private String customerEmail ="XXX@gmail.com";
//	private String customerAdd ="China";
	private Connection conn;
//	
//	
//	public String getCustomer() {
//		return customer;
//	}
//
//
//	public void setCustomer(String customer) {
//		this.customer = customer;
//	}
//
//
//	public String getCustomerNumber() {
//		return customerNumber;
//	}
//
//
//	public void setCustomerNumber(String customerNumber) {
//		this.customerNumber = customerNumber;
//	}
//
//
//	public String getCustomerDirth() {
//		return customerDirth;
//	}
//
//
//	public void setCustomerDirth(String customerDirth) {
//		this.customerDirth = customerDirth;
//	}
//
//
//	public String getCustomerEmail() {
//		return customerEmail;
//	}
//
//
//	public void setCustomerEmail(String customerEmail) {
//		this.customerEmail = customerEmail;
//	}
//
//
//	public String getCustomerAdd() {
//		return customerAdd;
//	}
//
//
//	public void setCustomerAdd(String customerAdd) {
//		this.customerAdd = customerAdd;
//	}


	public FindstoreJavaBean() {
		
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
	public void Findstore() throws SQLException {
		String sqlstr = "Select * From ecdb.store ";
		PreparedStatement state = conn.prepareStatement(sqlstr);
		ResultSet rs = state.executeQuery(sqlstr);
	}
	public void closeConn() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
