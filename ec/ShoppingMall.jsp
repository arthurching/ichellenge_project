<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="product"
	class="tw.ec.jspproject.javabean.FindstoreJavaBean" scope="session" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>購物中心</title>

<style>
</style>

</head>
<body>
	<%@ include file="headerPage.jsp"%>

	<!-- main -->
	<div class="container text-center">
		<div class="row content">
			<!-- middle -->
			<div class="col-sm-12 text-left">
				<br />
				<form action="processShoppingCart.jsp" method="post">
					<%
						Connection conn = product.getConnection();
						String sqlstr = "Select * From ecdb.product ";
						Statement state = conn.createStatement();
						ResultSet rs = state.executeQuery(sqlstr);

						while (rs.next()) {
					%>
					<div class="col-sm-4">
						<div class="panel panel-primary">
							<div class="panel-heading"><%=rs.getString("p_Name")%></div>
							<div class="panel-body">
								<a href="<%=rs.getString("p_Text")%>"><img
									src="images/imagecar/<%=rs.getString("p_Pic")%>"
									class="img-responsive" alt="Image"></a> <br />
								<p>
									售價:<%=rs.getString("p_Price")%>$　數量:<%=rs.getString("p_Stock")%></p>
							</div>
						</div>
					</div>
					<%
						}
					%>
				</form>
			</div>
		</div>
	</div>
	<br/>
	<br/>
	<%@ include file="footerPage.jsp"%>
</body>
</html>