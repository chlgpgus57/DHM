<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대동여행지도</title>
<c:import url="../template/boot.jsp" />

</head>
<body>
	<div class="container">
		<h1>Funding Participation Form</h1>
		
		<c:import url="../template/fundingJoinWriteForm.jsp" />	
		
	
	</div>
<script type="text/javascript">
$("#participation").click(function() {
	//다른 input들 검증.
	if($("#contents").val('')){
		alert("Empty");
	}else {
		$("#frm").submit();
	}
});
$("#re").click(function(){
	location.href= "./fundingList";
	});
</script>
</body>
</html>