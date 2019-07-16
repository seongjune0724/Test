<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>

	<p id="demo">Click</p>

	<button onclick="myFunction()">moviq</button>

	<script>
		function myFunction() {
			document.getElementById("demo").innerHTML = "Hello Moviq World";
		}
	</script>

</body>
</html>