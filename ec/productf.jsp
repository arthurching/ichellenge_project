<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="product"
	class="tw.ec.jspproject.javabean.productJavaBean" scope="page" />

<jsp:setProperty property="PName" name="product" param="PName" />
<jsp:setProperty property="PPic" name="product" param="PPic" />
<jsp:setProperty property="PPrice" name="product" param="PPrice" />
<jsp:setProperty property="PCount" name="product" param="PCount" />
<jsp:setProperty property="PHelp" name="product" param="PHelp" />


<%
	Connection conn = product.getConnection();
	if (conn != null && !conn.isClosed()) {
		product.storeCustomerOrder();
		product.closeConn();
	} else {
		out.write("DataBase Connection Fail.<br/>");
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="headerPage.jsp"%>

	<div style="height: 730px">

		<form action="productf.jsp" method="post">
			<div class="col-md-4 col-md-offset-4">
				<div style="margin: 20px" class="panel panel-primary">
					<div class="panel-heading"></div>
					<div class="panel-body text-center">
						<h1>商品上架成功!!</h1>
					</div>
				</div>
			</div>
		</form>
	</div>

	<%@ include file="footerPage.jsp"%>
</body>
</html>