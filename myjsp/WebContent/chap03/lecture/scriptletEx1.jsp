<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
int i = 3; 
%>
<h1>Lorem ipsum dolor.</h1>
<%
out.write(i);
out.print(i);
%>

<%
out.print("<h1>");
out.print("hello");
out.print("</h1>");
%>

<%
out.print("<h2>");
out.print(new java.util.Date());
out.print("</h2>");
%>

<%
if(i > 0){
out.print("<h>");
out.print("i�� 0���� ũ��");
out.print("</h>");
}else{
	out.print("<h>");
	out.print("i�� 0���� �۴�");
	out.print("</h>");
}
	
%>
</body>
</html>