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
				<h3>Pagani</h3>
			</div>
			<div class="panel-body">
				<div class="panel-body">
					<div class="col-sm-8">
						<img src="images/imagecar/4.jpg" width="100%" height="100%">
					</div>
					<div style="font-size: 24px" class="form-inline text-right">
						<h3 style="margin: 20px" class="text-left">現在購車即可獲得限量內框一組</h3>
						<h4 style="margin: 20px" class="text-left">
							風神”是汽車近代歷史上最偉大的創新之舉<br /> 可協同配合﹐迎角可變﹐前側可達20度﹐後側可達40度<br />
							0加速至60英里/小時（96公里/小時）：3秒（估計值）<br /> 馬力/扭矩：馬力700+ /
							扭矩737磅英尺（約1,000牛頓米）
						</h4>


						<%
							//未登入
							if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
						%>
						<form action="LoginPage.jsp" method="post">
							售價: 60,000,000$ <select name="count">
								<option value="1">one</option>
								<option value="2">two</option>
								<option value="3">three</option>
								<option value="4">four</option>
								<option value="5">five</option>
							</select> <input style="margin: 5px" class="form-control" name="items"
								value="Pagani" type="text" readonly>
							<button style="margin: 5px" class="btn btn-primary pull-right"
								type="submit">加入購物車</button>
						</form>
						<%
							} else {
								//已登入
						%>
						<form action="processShoppingCart.jsp" method="post">
							售價: 60,000,000$ <select name="count">
								<option value="1">one</option>
								<option value="2">two</option>
								<option value="3">three</option>
								<option value="4">four</option>
								<option value="5">five</option>
							</select> <input style="margin: 5px" class="form-control" name="items"
								value="Pagani" type="text" readonly>
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
					<h3 style="background-color: #BFD8ED" class="text-center">超級跑車Pagani
						Huayra“帕加尼風神”</h3>
					<h4>“風神”的原型車目前即將完成100萬公里的測試和驗證週期﹐計劃於2013年中在美國上市。
						讓我們假設這輛車的性能一如廣告宣傳所述﹐那麼這意味著兩個客觀可能性：一、“風神”是汽車近代歷史上最偉大的創新之舉﹐
						應該寫進認知科學的教科書中﹔二、“風神”是一個溝通方面的傑作。不管怎麼說﹐帕加尼並非獨自一個人完成“風神”的設計工作。
						發動機和液壓成型的MHG
						Fahrzeugtechnik鈦合金排氣裝置在德國製造﹐七速橫置單碟Xtrac手自一體雙離合器變速箱在英國製造﹐除底盤和車身以外﹐
						幾乎每一個零部件都來自於摩德納100公里以內的供應商﹐如阿維昂納爾鋁合金(Avional)鍛造而成的懸架搖臂﹐外型奇特如同單簧管的合金氣候模式切換裝置﹐
						定制的Pirellis輪胎﹐座位間的銑削鋁合金序列變速門等。帕加尼對這些零部件供應商的依賴度非常高。</h4>
					<h3 style="background-color: #BFD8ED" class="text-center">我見過許多百萬美元級的手工打造的超級跑車</h3>
					<h4>這些汽車都無法達到“風神”的高度。聽聽這個：通過由四台電腦控制的電子驅動飛行控制界面──即位於汽車後緣、楔形車鼻以及前輪罩之間的升降機──“風神”
						能實現氣動自平穩功能。各控制界面可獨立運行﹐也可協同配合﹐迎角可變﹐前側可達20度﹐後側可達40度﹐動態調整汽車的空氣動力平衡﹐減少前後顛簸、
						左右搖晃、頭尾擺動和高速豎起等異動現象。這意味著什麼？也就是說﹐當你在意大利鄉間像逃竄的銀行劫匪一樣開車狂奔時﹐
						“風神”的渦輪排氣控制閥全力咆哮﹐震耳欲聾的氣門爆炸聲好似天使在空中相撞﹐但車子彷彿被一根看不見的靈巧手指牢牢按在地面上﹐
						毫無顛簸之感。你急速上山﹐來到一個角度很大的右彎﹐頻點剎車﹐緊握方向盤﹐減速通過﹐此時右側平衡器開始工作﹐
						給車身右側的Pirellis寬幅輪胎施加更多的下壓力。給油﹐呼嘯……非常好﹐1.5G的側向加速度完美呈現。當車身擺正﹐速度提升﹐
						方向盤自動矯正以減少拖拽偏移。這輛車兇猛異常﹐能帶來如勒芒賽道般真實的賽車感受﹐讓我的脖子緊張得都幾乎僵硬。</h4>
					<h3 style="background-color: #BFD8ED" class="text-center">配置</h3>
					<h4>動力系統：中置、雙渦輪增壓、中冷、幹油池式潤滑系統、48閥、6.0升、汽缸夾角60度、配備可變凸輪軸相位正時系統的V12引擎﹐帶翹板變速開關和序列變速門的7速橫置單碟手自一體變速箱﹐帶限滑差速器的後輪式驅動。

						馬力/扭矩：馬力700+ / 扭矩737磅英尺（約1,000牛頓米） 長度/重量：長181.2英寸（4.6米）/
						重3,100磅（1.4噸） 軸距：110.0英寸（2.794米） 0加速至60英里/小時（96公里/小時）：3秒（估計值）

						0加速至186英里/小時（300公里/小時）：18秒（估計值） 極速：225英里/小時（362公里/小時）（估計值）

						美國環境保護署(EPA)燃油經濟性：10/14（百公里油耗約23.5升/16.8升）（估計值）

						後備箱容積：3立方英尺（合0.085立方米）（估計值）</h4>
				</div>
				<br /> <br />
			</div>
		</div>
	</div>

	<%@ include file="footerPage.jsp"%>


</body>
</html>