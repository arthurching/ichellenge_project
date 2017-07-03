<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
	<form action="processShoppingCart.jsp" method="post">

		<%@ include file="headerPage.jsp"%>
		<br />

		<div class="container text-center">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<input style="margin: 5px" class="form-control" name="items"
						value="Bugatti" type="text" readonly>
				</div>
				<div class="panel-body">
					<div class="panel-body">
						<div class="col-sm-8">
							<img src="images/imagecar/6.jpg" width="100%" height="100%">
						</div>
						<div style="font-size: 24px" class="form-inline text-right">
							<h3 style="margin: 20px" class="text-left">現在購車即可獲得限量內框一組</h3>
							<h4 style="margin: 20px" class="text-left">
								驚人的1,001匹馬力<br /> 完成由靜止加速至時速100公里的衝刺，極速更上看時速350公里<br />
								把頂級超級跑車的極速定義，首度拉高到400km/h的門檻！<br /> 銳利的線條滿佈車身，並以多邊形幾何拼接起車身每一塊鈑件
							</h4>
							售價: 2,500,000$ <select name="count">
								<option value="1">one</option>
								<option value="2">two</option>
								<option value="3">three</option>
								<option value="4">four</option>
								<option value="5">five</option>
							</select>
							<button style="margin: 5px" class="btn btn-primary pull-right"
								type="submit">加入購物車</button>
						</div>
					</div>
					<br />
					<div style="margin: 10px" class="text-left">
						<h3 style="background-color: #BFD8ED" class="text-center">突破400km/h門檻的第一車</h3>
						<h4>雖然在超級跑車的品牌知名度上，來自法國的Bugatti，
							名氣或許不比來自義大利的Ferrari或Lamborghini響亮，但自從VW集團入主經營，決心讓這個創廠於1909年的百年傳奇品牌復出後，
							為了延續義大利籍創辦人Ettore
							Bugatti對於汽車設計與賽車的熱情、重現Bugatti的傳奇，他們替自己立下了新車馬力至少得突破1,000匹、
							且極速需超越400km/h的兩個困難目標，並於2005年時，正式推出這款全球僅限量生產300輛、每輛訂價至少100萬歐元(目前原廠報價為120萬歐元，
							推估引進國內後的身價約1億)的Veyron 16.4，把頂級超級跑車的極速定義，首度拉高到400km/h的門檻！</h4>
						<h3 style="background-color: #BFD8ED" class="text-center">我見過許多百萬美元級的手工打造的超級跑車</h3>
						<h4>雖然在超級跑車的品牌知名度上，來自法國的Bugatti，
							名氣或許不比來自義大利的Ferrari或Lamborghini響亮，但自從VW集團入主經營，決心讓這個創廠於1909年的百年傳奇品牌復出後，
							為了延續義大利籍創辦人Ettore
							Bugatti對於汽車設計與賽車的熱情、重現Bugatti的傳奇，他們替自己立下了新車馬力至少得突破1,000匹、
							且極速需超越400km/h的兩個困難目標，並於2005年時，正式推出這款全球僅限量生產300輛、每輛訂價至少100萬歐元(目前原廠報價為120萬歐元，
							推估引進國內後的身價約1億)的Veyron 16.4，把頂級超級跑車的極速定義，首度拉高到400km/h的門檻！</h4>
						<h3 style="background-color: #BFD8ED" class="text-center">4渦輪增壓W16全力開催</h3>
						<h4>以車身後方所搭載之W16 4渦輪增壓引擎的「16」與「4」做為副車名的Veyron 16.4，是目前世售量產車中，
							少數擁有千匹馬力的超級跑車(來自瑞典、國內未引進的Koenigsegg
							CCXR與Agera-R，亦擁有1018匹的最大馬力)，配置了一具VW集團特地替它量身打造、
							以兩具V8引擎結合，排氣量高達7,993c.c.的W型排列16汽缸4渦輪增壓引擎，搭配可對應超過100公斤米最大扭力的特殊7速DSG雙離合器自手排變速箱與全時4輪傳動系統，
							能在引擎轉速6,000rpm時，輸出高達1,001匹的最大馬力，並可於2,200~5,500rpm的轉速域間，源源不絕地提供127.5公斤米之最大扭力。</h4>
					</div>
					<br /> <br />
				</div>
			</div>
		</div>

		<%@ include file="footerPage.jsp"%>

	</form>
</body>
</html>