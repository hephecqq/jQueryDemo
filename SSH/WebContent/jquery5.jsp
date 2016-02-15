<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/script/jquery-1.4.2.js"></script>
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0;
	padding: 40px;
	background: #fff;
	font: 80% Arial, Helvetica, sans-serif;
	color: #555;
	line-height: 180%;
}

mg {
	border: none;
}

ul, li {
	margin: 0;
	padding: 0;
}

li {
	list-style: none;
	float: left;
	display: inline;
	margin-right: 10px;
	border: 1px solid #AAAAAA;
}

#tooltip {
	position: absolute;
	border: 1px solid #ccc;
	background: #333;
	padding: 2px;
	display: none;
	color: #fff;
}
</style>
</head>
<body>
	<hr>
	<h3>有效果：</h3>
	<ul>
		<li><a href="images/apple_1_bigger.jpg" class="tooltip"
			title="苹果 iPod"><img src="apple_1_bigger.jpg" alt="苹果 iPod" /></a></li>
		<li><a href="images/apple_1_bigger.jpg" class="tooltip"
			title="苹果 iPod nano"><img src="apple_1_bigger.jpg"
				alt="苹果 iPod nano" /></a></li>
		<li><a href="images/apple_1_bigger.jpg" class="tooltip"
			title="苹果 iPhone"><img src="apple_1_bigger.jpg" alt="苹果 iPhone" /></a></li>
		<li><a href="images/apple_1_bigger.jpg" class="tooltip"
			title="苹果 Mac"><img src="images/apple_1_bigger.jpg" alt="苹果 Mac" /></a></li>
	</ul>
	<script type="text/javascript">
		$(function() {
			var x = 10;
			var y = 20;
			$("a.tooltip")
					.mouseover(
							function(e) {
								//取出当前图片的title,放入myTitle中
								this.myTitle = this.title;
								//当前titile为空字符串
								this.title = "";
								//为新创建的图片的imgTitle赋值
								var imgTitle = this.myTitle ? "<br/>"
										+ this.myTitle : "";
								//创建一个div的dom结构,该结构的元素为img
								var tooltip = "<div id='tooltip'><img src='" + this.href + "' alt='产品预览图'/>"
										+ imgTitle + "<\/div>"; //创建 div 元素
								//将该结构追加到body结构中去
								$("body").append(tooltip); //把它追加到文档中						        
								//为定义的id选择器#tooltip设置css样式,当前才有绝对定位,位置的top和left属性由获取当前鼠标定义的坐标加上x和y值来共同决定
								$("#tooltip").css({
									"top" : (e.pageY + y) + "px",
									"left" : (e.pageX + x) + "px"
								}).show("fast"); //设置x坐标和y坐标，并且显示 注意show()函数的参数是显示的速度时间
							}).mouseout(function() {
						this.title = this.myTitle;
						$("#tooltip").remove(); //移除 
					}).mousemove(function(e) {
						//设置当鼠标移动的时候css中top和l样式的改变
						$("#tooltip").css({
							"top" : (e.pageY + y) + "px",
							"left" : (e.pageX + x) + "px"
						});
					});
		});
	</script>

</body>
</html>