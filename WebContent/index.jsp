<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		//1获取a节点，并为其添加onclick响应函数
	document.getElementsByTagName("a")[0].onclick = function(){
			
		//3创建一个XMLHttpRequest对象
		var request = new XMLHttpRequest();
		//4准备发送请求的数据：url
		var url = this.href;
		var method = "GET";
		//5调用XMLHttpRequest 对象的open 方法
		request.open(method,url);
		
		//6.调用XMLHttpRequest 对象的send 方法
		request.send(null);
		
		//7.为XML
		request,onreadystatechange = function() {
			if(request.readyState == 4){
				if(request.status == 200 || request.status == 304){
					alert(request.responseText);
				}
			}
		}
		//2取消a节点的默认行为
			return false;
	}
}
</script>
</head>
<body>

<a href="helloAjax.txt">HelloAjax</a>

</body>
</html>