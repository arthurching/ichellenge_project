<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%-- OrderSystemJavaBean orderSystem = new OrderSystemJavaBean();--%>
<jsp:useBean 
      id="orderSystem"
      class="tw.ec.jspproject.javabean.OrderSystemJavaBean"
      scope="page"/>
      
<jsp:setProperty property="name" name="orderSystem" param="buyname"/>
<jsp:setProperty property="product" name="orderSystem" param="buyproduct"/>
<jsp:setProperty property="count" name="orderSystem" param="buycount"/>

<%
   Connection conn = orderSystem.getConnection();
   if(conn!=null && !conn.isClosed()){
	   orderSystem.storeCustomerOrder();
	   orderSystem.closeConn();
   }else{
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
					<div class="panel-heading">
					</div>
					<div class="panel-body text-center">
						<h1>已訂購成功</h1>
					</div>
				</div>
			</div>
		</form>
	</div>

<%@ include file="footerPage.jsp"%>

</body>
</html>