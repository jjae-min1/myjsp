<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.util.stream.*" %>
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
List<Integer> list = new ArrayList();
String[] result = request.getParameterValues("num");
int[] arr = new int[6];
int[] arr2 = new int[6];
if(result != null){
	for(int i = 0; i < result.length; i++){
		arr[i] = Integer.valueOf(result[i]);		
			
	}
}


%>
<%
int count = 0;
 	/* �迭�� ���� �ִ��� Ȯ�� : IntStream.of(�迭).anyMatch(x -> x == Ư�� ����);
	  �迭�� ��Ʈ�� �ִ��� Ȯ�� : Arrays.stream(�迭).anyMatch(Ư�� ��::equals);
											equals���� �ٸ� �޼ҵ�鵵 ��ü ����*/
	for(int i = 0; i < 6; i++){
		
		int value = (int) ((Math.random() * 45)+1);
		arr2[i] = value;
		if(IntStream.of(arr).anyMatch(x -> x == value)){
			count++;
		}
	}
%>

������ ��ȣ :
<%
for(int i = 0; i < arr.length; i++){
	out.print(arr[i]);	
	if(i != arr.length){	
		out.print(", ");	
	}
}
%>
<br />
��÷ ��ȣ :
<%
for(int i = 0; i < arr2.length; i++){
	out.print(arr2[i]);
	if(i != arr.length){
		out.print(", ");
	}
}
%>
<br />
��÷�� ���� : <%= count %>

</body>
</html>