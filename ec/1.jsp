<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%@ include file="headerPage.jsp"%>
	<br />
	<div class="container text-center">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3>McLaren P1</h3>
			</div>
			<div class="panel-body">
				<div class="panel-body">
					<div class="col-sm-8">
						<img src="images/imagecar/1.jpg" width="100%" height="100%">
					</div>
					<div style="font-size: 24px" class="form-inline text-right">
						<h3 style="margin: 20px" class="text-left">現在購車即可獲得限量內框一組</h3>
						<h4 style="margin: 20px" class="text-left">
							McLarenP1有意入手的車主恐怕就要加緊動作了，因為P1會限量生產僅僅375輛<br />
							靜止加速至時速300公里比前輩McLaren F1快上5秒<br /> 靜止至時速100公里3秒內完成<br />
							輕量化電動馬達的本事也不容小覷，能夠輸出179匹最大馬力，而26.5公斤米最大馬力幾乎從靜止開始就能全數奉上
						</h4>

						<%
							//未登入
							if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
						%>
						<form action="LoginPage.jsp" method="post">
							售價: 38,800,000$ <select name="count">
								<option value="1">one</option>
								<option value="2">two</option>
								<option value="3">three</option>
								<option value="4">four</option>
								<option value="5">five</option>
							</select> <input style="margin: 5px" class="form-control" name="items"
								value="McLaren P1" type="text" readonly>
							<button style="margin: 5px" class="btn btn-primary pull-right"
								type="submit">加入購物車</button>
						</form>
						<%
							} else {
								//已登入
						%>
						<form action="processShoppingCart.jsp" method="post">
							售價: 38,800,000$ <select name="count">
								<option value="1">one</option>
								<option value="2">two</option>
								<option value="3">three</option>
								<option value="4">four</option>
								<option value="5">five</option>
							</select> <input style="margin: 5px" class="form-control" name="items"
								value="McLaren P1" type="text" readonly>
							<button style="margin: 5px" class="btn btn-primary pull-right"
								type="submit">加入購物車</button>
						</form>
						<%
							}
						%>
						
					</div>
				</div>
				<br />
				<div style="margin: 10px" class="text-left">
					<h3 style="background-color: #BFD8ED" class="text-center">限量375輛，英鎊86.6萬元起跳</h3>
					<h4>這樣強悍的McLarenP1將在日內瓦車展上正式亮相，有意入手的車主恐怕就要加緊動作了，
						因為P1會限量生產僅僅375輛。有傳聞稱，McLaren原本計劃生產500輛P1，不過當Ron Dennis與潛在車主進行會面之後，
						他決定將產量縮減為375輛，以突出其稀有性。McLaren
						P1之售價為從英鎊86.6萬元起跳，約新臺幣3,880萬元左右，銷售將從今年3月份展開， 而最快的交車時間將是今年年底之前。</h4>
					<h3 style="background-color: #BFD8ED" class="text-center">再快就要飛起來，McLaren
						P1性能表現終於公佈</h3>
					<h4>在2012巴黎國際車展上，英國車廠McLaren推出了P1概念車，
						正式向世界介紹這輛傳承超級跑車傳奇作品：McLaren F1的全新產品。
						而在推出後的數月間，McLaren陸續公佈有關P1的各種細節，從外觀到一直秘而不宣的內裝設計，
						到早前正式公佈其動力配置及輸出數據。而在日前，McLaren也正式發表了P1的性能表現，
						靜止加速至時速300公里比前輩McLaren
						F1快上5秒，最高速度達時速350公里的強悍表現，勢必讓全球車迷更期待日內瓦車展上的實車亮相。</h4>
					<h3 style="background-color: #BFD8ED" class="text-center">靜止至時速100公里3秒內完成</h3>
					<h4>P1將搭載由3.8升V8雙渦輪增壓引擎和電動馬達組成的油電混合動力系統，
						其3.8升V8雙渦輪增壓引擎為MP4-12所使用的M838T引擎之最新版本，最大馬力也提升至737匹，
						最大扭力則73.4公斤米。輕量化電動馬達的本事也不容小覷，能夠輸出179匹最大馬力，而26.5公斤米最大馬力幾乎從靜止開始就能全數奉上。
						兩者配合，P1能夠爆發出916匹最大馬力以及91.8公斤米的最大扭力。</h4>
				</div>
				<br /> <br />
			</div>
		</div>
	</div>

	<%@ include file="footerPage.jsp"%>



</body>
</html>