<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("euc-kr"); %>
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
<form action="viewParameter.jsp" method="post">
�̸� : <input type="text" name="name" size="10" /><br />
�ּ� : <input type="text" name="address" size="30" /><br />
�����ϴ� ���� :
	<input type="checkbox" name="pet" value="dog" />������
	<input type="checkbox" name="pet" value="cat" />�����
	<input type="checkbox" name="pet" value="pig" />����
	
<br />
<input type="submit" value="����" />

</form>
</body>
</html>