package tw.ec.jspproject.javabean;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class OrderSystemJavaBean implements Serializable {

	private static final long serialVersionUID = 1L;
	private String name= "XXX";
	private String product ="132";
	private String count ="369852";
	private Connection conn;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
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
	public void storeCustomerOrder() throws SQLException {
		String sqlstr = "Insert Into ecdb.ordersystem(O_Name, O_Product, O_Count) Values(?,?,?)";
		PreparedStatement state = conn.prepareStatement(sqlstr);
		state.setString(1, name);
		state.setString(2, product);
		state.setString(3, count);
		state.executeUpdate();
	}
	public void closeConn() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
