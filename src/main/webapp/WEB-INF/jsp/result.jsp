<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="BIG5">
<title></title>
<style type="text/css">
	#img{
		width:800px;
		height:300px;
		position: relative;
		left: 18%;
	}
	#back{
		position: relative;
		left: 40%;
	}
	#bt{
		margin:10px;
		padding:5px;
	}
	div{
		border-width:3px;
		border-style:solid;
		border-color:#FFAC55;
		padding:5px;
		position: relative;
		left: 30%;
		width:500px;
	}
	p{
		position: relative;
		left: 40%;
	 }
	#update,#delete{
		margin:10px;
		padding:5px;
		position: relative;
		left: 40%;
	}
</style>
</head>
<body>
	<img src="/pic/D2.jpg" id="img"><br>
	
	<form action="/example/all" method="GET" id="back">
		暗黑破換神: ${message}<br>
	 	
	</form>
	
	<c:forEach var="data" items="${ list }">
		<div>
			 ID: ${data.id}<br>
             NAME: ${data.name}<br>
        <form action="/example/update/${data.id}" method="POST">
            <button id="update" type="submit">修改</button>
        </form>
        <form action="/example/delete/${data.id}" method="POST">
            <button id="delete" type="submit">刪除</button>
        </form>
		</div>
	 </c:forEach>
	 
	 <form action="/example/test" method="GET" id="back">
            <button id="bt" type="submit">返回輸入頁面</button>
     </form>

</body>
</html>