<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>產品上架</title>
</head>
<body>
	<%@ include file="headerPage.jsp"%>

	<div style="height: 730px">

		<form action="productf.jsp" method="post">
			<div class="col-md-4 col-md-offset-4">
				<div style="margin: 20px" class="panel panel-primary">
					<div class="panel-heading">
						<h1>商品上架</h1>
					</div>
					<div class="panel-body">
						產品名稱:<input style="margin: 5px" class="form-control" name="PName"
							value="" type="text" required> 請選擇上傳圖片:<input
							style="margin: 5px" class="form-control" name="PPic" type="file">
						售價:<input style="margin: 5px" class="form-control" name="PPrice"
							value="" type="text" required> 數量:<input
							style="margin: 5px" class="form-control" name="PCount" value=""
							type="text" required> 請選擇產品介紹檔(.jsp)<input
							style="margin: 5px" class="form-control" name="PHelp" type="file">
						<p>
							<button style="margin: 5px" class="btn btn-primary pull-right"
								type="submit">確認上傳</button>
						</p>
					</div>
				</div>
			</div>
		</form>
	</div>

	<%@ include file="footerPage.jsp"%>
</body>
</html>