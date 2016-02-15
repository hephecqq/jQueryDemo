<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
* {
	margin: 0;
	padding: 0
}

;
body {
	 font: 12px/19px Arial,  Helvetica,  sans-serif;
	 color: white;
}

.tab {
	width: 240px;
	margin-left: 50px;
	border: 1px solid red;
}

.tab li {
	float: left;
	padding: 1px 2px;
	text-align: center;
	cursor: pointer;
	list-style: none;
	margin-right: 4px;
	background: gray;
	border: 1px solid  #898989;
	border-bottom: none
}

.tab_box{
	 clear: both;
	 border: 1px solid #898989;
	 height: 100px;
}

.hide {
	display: none
}
 


 
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/script/jquery-1.4.2.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>实现网页选项卡。其效果如图2-1～2-3所示</h1>

	<div class="tab">
		            
		<div class="tab_menu">
			<ul>
				<li class="selected">时事</li>
				<li>体育</li>
				<li>娱乐</li>
			</ul>
			 
		</div>
		              
		<div class="tab_box">
			                  
			<div>时事</div>
			                  
			<div class="hide">体育</div>
			                 
			<div class="hide">娱乐</div>
			             
		</div>
		         
	</div>

</body>
</html>