<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ifmOpen</title>
<link rel="stylesheet"  href="../css/schedule.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<c:import url="../template/boot.jsp"/>
</head>
<body>
<form action="">
	<div class="ifm-wrapper">
		<div class="row"> 
			<h3 class="ifm-title">금강산도 식후경</h3>
			<div class="content-wrap" >
				<ul class="nolist ifmopen">
					<c:forEach items="${food}" var="fo">
						<li>
							<div class="card2">
								<div style="position: relative;">
									
								   <%-- <c:choose>
		                              <c:when test="${vo.wish eq 1}"> --%>
		                              <%-- <div class="good-card-wish-btn onclick-cursor-pointer good-card-wish-btn-whis" title="${vo.goods_num}"></div> --%>
		                              		<%-- <div class="wishlist wish-active" onclick="wish('${fo.title}','${fo.firstimage}','${fo.addr1}',${arCode})"><i class="fa fa-check-circle"></i></div> --%> 
		                            <%--   </c:when>
		                              <c:when test="${vo.wish eq 0}"> --%>
		                            <%--   <div class="good-card-wish-btn onclick-cursor-pointer" title="${vo.goods_num}"></div> --%>
		                              		<div class="wishdiv" onclick="wish('${fo.title}','${fo.firstimage}','${fo.addr1}',${arCode})"><i class="fa fa-check-circle wishlist"></i></div> 
		                         <%--      </c:when>
		                           </c:choose> --%>
									
									
									
									<div class="img-wrap"><img class="wish-img" alt="여행사진" src="${fo.firstimage}"></div>
								</div>
								<div>
									<div style="padding: 3px; width: 80%;float: left;">
										<div class="i-card-title">${fo.title}</div>
										<div class="addr">${fo.addr1 }</div>
									</div>
									<div style="width: 20%; float: left; padding-top: 10px">
										<a onclick="clickinfo('${fo.title}')">
											<i class="fa fa-info-circle" style="color: gray; font-size: 23px;"></i>
										</a>
									</div>
								</div>	 
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		<div class="row">
			<h3 class="ifm-title">신나는 관광</h3>
			<div class="content-wrap">
				<ul class="nolist ifmopen">
					<c:forEach items="${tour}" var="tu">
						<li>
							<div class="card2">
								<div style="position: relative;">
									<div class="wishdiv"><i class="fa fa-check-circle wishlist"></i></div> 
									
									<div class="img-wrap"><img class="wish-img" alt="여행사진" src="${tu.firstimage}"></div>
								</div>
								<div>
									<div style="padding: 3px; width: 80%;float: left;">
										<div class="i-card-title">${tu.title}</div>
										<div class="addr">${tu.addr1 }</div>
									</div>
									<div style="width: 20%; float: left; padding-top: 10px">
										<a onclick="clickinfo('${tu.title}')">
											<i class="fa fa-info-circle" style="color: gray; font-size: 23px;"></i>
										</a>
									</div>
								</div>	 
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		
		<div class="row">
			<h3 class="ifm-title">문화시설</h3>
			<div class="content-wrap">
				<ul class="nolist ifmopen">
					<c:forEach items="${culture}" var="cu">
						<li>
							<div class="card2">
								<div style="position: relative;">
									<div class="wishdiv"><i class="fa fa-check-circle wishlist"></i></div> 
									
									<div class="img-wrap"><img class="wish-img" alt="여행사진" src="${cu.firstimage}"></div>
								</div>
								<div>
									<div style="padding: 3px; width: 80%;float: left;">
										<div class="i-card-title">${cu.title}</div>
										<div class="addr">${cu.addr1 }</div>
									</div>
									<div style="width: 20%; float: left; padding-top: 10px">
										<a onclick="clickinfo('${cu.title}')">
											<i class="fa fa-info-circle" style="color: gray; font-size: 23px;"></i>
										</a>
									</div>
								</div>	 
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		
		<div class="row">
			<h3 class="ifm-title">축제</h3>
			<div class="content-wrap">
				<ul class="nolist ifmopen">
					<c:forEach items="${festival }" var="fe">
						<li>
							<div class="card2">
								<div style="position: relative;">
									<div class="wishdiv"><i class="fa fa-check-circle wishlist"></i></div> 
									
									<div class="img-wrap"><img class="wish-img" alt="여행사진" src="${fe.firstimage}"></div>
								</div>
								<div>
									<div style="padding: 3px; width: 80%;float: left;">
										<div class="i-card-title">${fe.title}</div>
										<div class="addr">${fe.addr1 }</div>
									</div>
									<div style="width: 20%; float: left; padding-top: 10px">
										<a onclick="clickinfo('${fe.title}')">
											<i class="fa fa-info-circle" style="color: gray; font-size: 23px;"></i>
										</a>
									</div>
								</div>	 
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		<div class="row">
			<h3 class="ifm-title">레포츠</h3>
			<div class="content-wrap">
				<ul class="nolist ifmopen">
					<c:forEach items="${report }" var="re">
						<li>
							<div class="card2">
								<div style="position: relative;">
									<div class="wishdiv"><i class="fa fa-check-circle wishlist"></i></div> 
									
									<div class="img-wrap"><img class="wish-img" alt="여행사진" src="${re.firstimage}"></div>
								</div>
								<div>
									<div style="padding: 3px; width: 80%;float: left;">
										<div class="i-card-title">${re.title}</div>
										<div class="addr">${re.addr1}</div>
									</div>
									<div style="width: 20%; float: left; padding-top: 10px">
										<a onclick="clickinfo('${re.title}')">
											<i class="fa fa-info-circle" style="color: gray; font-size: 23px;"></i>
										</a>
									</div>
								</div>	 
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		<div class="row">
			<h3 class="ifm-title">숙박시설</h3>
			<div class="content-wrap">
				<ul class="nolist ifmopen">
					<c:forEach items="${hotel }" var="ho">
						<li>
							<div class="card2">
								<div style="position: relative;">
									<div class="wishdiv"><i class="fa fa-check-circle wishlist"></i></div> 
									
									<div class="img-wrap"><img class="wish-img" alt="여행사진" src="${ho.firstimage}"></div>
								</div>
								<div>
									<div style="padding: 3px; width: 80%;float: left;">
										<div class="i-card-title">${ho.title}</div>
										<div class="addr">${ho.addr1 }</div>
									</div>
									<div style="width: 20%; float: left; padding-top: 10px">
										<a onclick="clickinfo('${ho.title}')">
											<i class="fa fa-info-circle" style="color: gray; font-size: 23px;"></i>
										</a>
									</div>
								</div>	 
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		<div class="row">
			<h3 class="ifm-title">여행코스</h3>
			<div class="content-wrap">
				<ul class="nolist ifmopen">
					<c:forEach items="${course }" var="co">
						<li>
							<div class="card2">
								<div style="position: relative;">
									<div class="wishdiv"><i class="fa fa-check-circle wishlist"></i></div> 
									
									<div class="img-wrap"><img class="wish-img" alt="여행사진" src="${co.firstimage}"></div>
								</div>
								<div>
									<div style="padding: 3px; width: 80%;float: left;">
										<div class="i-card-title">${co.title}</div>
										<div class="addr">${co.addr1 }</div>
									</div>
									<div style="width: 20%; float: left; padding-top: 10px">
										<a onclick="clickinfo('${co.title}')">
											<i class="fa fa-info-circle" style="color: gray; font-size: 23px;"></i>
										</a>
									</div>
								</div>	 
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		<div class="row">
			<h3 class="ifm-title">쇼핑</h3>
			<div class="content-wrap">
				<ul class="nolist ifmopen">
					<c:forEach items="${shopping }" var="sh">
						<li>
							<div class="card2">
								<div style="position: relative;">
									<div class="wishdiv"><i class="fa fa-check-circle wishlist"></i></div> 
									
									<div class="img-wrap"><img class="wish-img" alt="여행사진" src="${sh.firstimage}"></div>
								</div>
								<div>
									<div style="padding: 3px; width: 80%;float: left;">
										<div class="i-card-title">${sh.title}</div>
										<div class="addr">${sh.addr1 }</div>
									</div>
									<div style="width: 20%; float: left; padding-top: 10px">
										<a onclick="clickinfo('${sh.title}')">
											<i class="fa fa-info-circle" style="color: gray; font-size: 23px;"></i>
										</a>
									</div>
								</div>	 
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
	</div>
</form>

<script type="text/javascript">

	function clickinfo(title){
		window.open("https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query="+title);
	}


	$(".wishlist").click(function(){
		
		 $(this).toggleClass("wish-active"); 
	
	});


// 	var titleA = new Array();
// 	var firstimageA = new Array();
// 	var addr1A = new Array();
// 	var arCodeA = new Array();	
// 	function wish(titleA, firstimage, addr1, arCode) {
		
// 		if($(this).children().hasClass("wish-active")){

// 			$(this).removeClass("wish-active");

// 				titleA.push(titleA);
// 				firstimageA.push(firstimage);
// 				addr1A.push(addr1);
// 				arCodeA.push(arCode);
				
// 				$.ajax({
// 		        	type:"POST",
// 		        	url:"makePlanner",
// 		        	data:{
// 			        	titleA:titleA,
// 			        	firstimage:firstimageA,
// 			        	addr1:addr1A,
// 			        	arCode:arCodeA
// 		        	},
// 		        	success : function(){
// 		        	},
// 		        	error: function() {
// 		        		alert('로그인이 필요합니다.');
// 						 location.href="member/login";
// 					},
					
// 		    	}); 

// 			}else{

// 			$(this).children().addClass("wish-active");

	
// 				titleA.push(titleA);
// 				firstimageA.push(firstimage);
// 				addr1A.push(addr1);
// 				arCodeA.push(arCode);
				
// 			 $.ajax({
// 	        	type: "POST",
// 	        	url:"../planner/makePlanner",
// 	        	data:{
// 	        		titleA:titleA,
// 		        	firstimage:firstimageA,
// 		        	addr1:addr1A,
// 		        	arCode:arCodeA
// 	        	},
// 	        	success : function(){ 

// 		        },
// 	        	error: function() {
// 				  alert('로그인이 필요합니다.');
// 				   location.href="member/login"; 
// 				},
				
// 	    	});   
// 		}
			
// 		event.stopImmediatePropagation();
// 	} 
 
</script>
<script src="../js/ifmOpen.js"></script>
</body>
</html>