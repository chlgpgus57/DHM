<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="../imgs/logos/logo-fav.ico">
<meta charset="UTF-8">
<title>DHM Planner</title>
<link rel="stylesheet"  href="../css/funding.css">
<c:import url="./template/fundingBoot.jsp" />
<link rel="stylesheet"  href="../css/basic.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
</head>
<body>
<c:import url="../template/nav.jsp"/>
<div style="height: 100px;"></div>
<c:forEach items="${vo.fundingJoinVOs}" var="list" varStatus="i">
<div>
	
</div>
<div class="fj_list">
	<div>
		<div>
			<a href="./fundingSelect?num=${list.fundingVO.num}" class="fj_l">
				<div class="fj_block">
					<div class="fj_inner_area">
						${i.index+1}
					</div>
					<div class="fj_line"></div>
					<div class="fj_inner_area2">
						<div class="fj_inner_area3">
							<div class="fj_inner_area4">
							<div class="fj_inner_img"></div>
								<div class="fj_inner_area4_1">
									<label class="fj_inner_area4_1_1">참여 완료</label>
								</div>
								<div class="fj_inner_area4_2">${list.fundingVO.name}</div>
								<div class="fj_inner_area4_3">${list.fundingVO.startTime} ~ ${list.fundingVO.endTime}</div>
								<div class="fj_inner_area4_3">펀딩 참여 아이디 : ${list.participationId}, 참여 인원 : ${list.participationPeople}명</div>
								<div class="fj_inner_area4_4">${list.total}원을 후원하셨습니다.</div>
							</div>
							<a href="./fundingJoinDelete?num=${list.num}" id="del_${i.index}"><div class="fj_inner_area4_1_1" style="width: 50px; padding:10px; color: red; text-align: center; background-color: red;">취소</div></a>

						</div>
					</div>
				</div>
			
			</a>
		</div>
	</div>
</div>
</c:forEach>
<div style="text-align: center; width: 100%; height: 30px; margin-top : 50px;">
	<button id="re" class="btn btn-primary" style="margin: 0 auto;, padding-left: 15px; padding-right: 15px; font-size: 2em;">뒤로 가기</button>
</div>
<div style="height: 100px;"></div>

<script type="text/javascript">
	/* for(int i = 0; i < 100; i++){
			$("#del_"+0).click(function {
				if (confirm("취소하시겠습니까?") == true){    //확인

				     location.href="./fundingJoinDelete?num=${list.num}";

				 }else{   //취소
				     return false;
				 }
				});
		} */

		$("#re").click(function(){
				history.back();
			});
		
</script>
</body>
</html>