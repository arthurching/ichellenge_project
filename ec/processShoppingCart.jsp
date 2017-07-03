<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<jsp:useBean id="myCart"
	class="tw.ec.jspproject.javabean.ShoppingCartJavaBean" scope="page" />

<jsp:setProperty property="product" name="myCart" param="items" />
<jsp:setProperty property="count" name="myCart" param="count" />
<jsp:setProperty property="submitType" name="myCart" param="action" />

<%
	myCart.processSubmitAction();
	myCart.processSubmitAction2();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="move.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<%@ include file="headerPage.jsp"%>

	<div style="height: 730px">
		<form action="ProcessOrder.jsp" method="post">
			<div class="col-md-4 col-md-offset-4">
				<div style="margin: 20px" class="panel panel-primary">
					<div class="panel-heading text-center">
						<h4>您的購物車清單</h4>
					</div>
					<div class="panel-body">
						訂購人:<input style="margin: 5px" class="form-control" name="buyname"
							value="<%=session.getAttribute("userName")%>" type="text"
							readonly> 欲訂購產品:<input style="margin: 5px"
							class="form-control" name="buyproduct"
							value="<%for (String item : myCart.getShoppingCartLists()) {
				out.write(item + "");
			}%>"
							type="text" readonly> 數量:<input style="margin: 5px"
							class="form-control" name="buycount"
							value="<%for (String count : myCart.getShoppingCartLists2()) {
				out.write(count + "");
			}%>"
							type="text" readonly>
						<p>
							<button style="margin: 5px" class="btn btn-primary pull-right"
								type="submit">確認訂購</button>
						</p>
					</div>
				</div>
			</div>
		</form>
	</div>

	<%@ include file="footerPage.jsp"%>
</body>
</html>