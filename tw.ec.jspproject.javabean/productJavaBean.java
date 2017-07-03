package tw.ec.jspproject.javabean;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class productJavaBean implements Serializable {

	private static final long serialVersionUID = 1L;
	private String PName = "XXX";
	private String PPic ="1.jpg";
	private String PPrice ="369852";
	private int PCount =1;
	private String PHelp ="1";
	
	public int getPCount() {
		return PCount;
	}
	public void setPCount(int pCount) {
		PCount = pCount;
	}
	public String getPName() {
		return PName;
	}
	public void setPName(String pName) {
		PName = pName;
	}
	public String getPPic() {
		return PPic;
	}
	public void setPPic(String pPic) {
		PPic = pPic;
	}
	public String getPPrice() {
		return PPrice;
	}
	public void setPPrice(String pPrice) {
		PPrice = pPrice;
	}
	public String getPHelp() {
		return PHelp;
	}
	public void setPHelp(String pHelp) {
		PHelp = pHelp;
	}
	private Connection conn;
	
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
		String sqlstr = "Insert Into ecdb.product(p_Name, p_Pic, p_Price, p_Stock, p_Text) Values(?,?,?,?,?)";
		PreparedStatement state = conn.prepareStatement(sqlstr);
		state.setString(1, PName);
		state.setString(2, PPic);
		state.setString(3, PPrice);
		state.setInt(4, PCount);
		state.setString(5, PHelp);
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
