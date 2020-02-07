<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${days }일 동안의 ${plannerType }가는 국내 여행</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet"  href="../css/schedule.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=91fb61305af50f444a07659b68d73d1f"></script>

<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
<link rel="stylesheet"  href="../css/basic.css">
<link rel="stylesheet" href="../css/calendar/fullCalendar.css">
<link rel="stylesheet" href="../css/calendar/daygrid.css">
<link rel="stylesheet" href="../css/calendar/timegrid.css">
<script src="https://unpkg.com/swiper/js/swiper.js"></script>
<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  

<c:import url="../template/boot.jsp"/>
</head>
<body>
<c:import url="../template/nav.jsp"/>
	<!-- <form action="schedulePage" method="POST"> -->

	<div style="background-color: #f5f5f5">
	<div class="header">
	</div>
	<div class="container container2">
		<div class="main-container">
			
			<div >
				<h3 class="contents-title">${plannerTitle}</h3>
				<input type="hidden" id="plNum" value="${plNum}" name ="plNum">
			</div>
			<div class="main-contents">
				<div class="map-wrapper">
					<div class="map" id="map">
						<div class="map-peopleType">
							<div class="swiper-before">
								<div class="map-header">
									<c:if test="${plannerType eq '남자끼리'}">
										<img id="peopleTypeimg" src="//www.stubbyplanner.com/img_v14/tripwith/TW_2_2.png">
									</c:if>
									<c:if test="${plannerType eq '여자끼리'}">
										<img id="peopleTypeimg" src="//www.stubbyplanner.com/img_v14/tripwith/TW_2_1.png">
									</c:if>
									<c:if test="${plannerType eq '여자혼자'}">
										<img id="peopleTypeimg" src="//www.stubbyplanner.com/img_v14/tripwith/TW_1_1.png">
									</c:if>
									<c:if test="${plannerType eq '남자혼자'}">
										<img id="peopleTypeimg" src="//www.stubbyplanner.com/img_v14/tripwith/TW_1_2.png">
									</c:if>
									<c:if test="${plannerType eq '커플/신혼'}">
										<img id="peopleTypeimg" src="//www.stubbyplanner.com/img_v14/tripwith/TW_1_3.png">
									</c:if>
									<c:if test="${plannerType eq '부모님과'}">
										<img id="peopleTypeimg" src="//www.stubbyplanner.com/img_v14/tripwith/TW_3_2.png">
									</c:if>
									<c:if test="${plannerType eq '아이들과'}">
										<img id="peopleTypeimg" src="//www.stubbyplanner.com/img_v14/tripwith/TW_3_1.png">
									</c:if>
									<c:if test="${plannerType eq '부모님끼리'}">
										<img id="peopleTypeimg" src="//www.stubbyplanner.com/img_v14/tripwith/TW_3_3.png">
									</c:if>
									<c:if test="${plannerType eq '남녀함께'}">
										<img id="peopleTypeimg" src="//www.stubbyplanner.com/img_v14/tripwith/TW_2_3.png">
									</c:if>
								</div>
								<div class="map-body">${plannerType}</div>
							</div>
							<div class="swiper-modal swiper">
								<div class="modal-head" style="text-align: center; padding-top: 20px;">
									<font style="color: white; font-size: 13pt; font-weight: 700;">누구와 함께하는 여행인가요?</font>
								</div>
								<div style="padding-bottom: 15px;">
									<div style="float: left; width: 33%;" onclick="type('여자혼자',${plNum})" class="typediv">
										<a >
											<img src="https://www.stubbyplanner.com/img_v14/tripwith/TW_1_1_w.png" width="100%">
										</a>
										<div style="margin-top: -15px; text-align: center;">
											<font style="color: white;font-size: 8pt;" >여자혼자</font>
										</div>
									</div>
									
									
									<div style="float: left; width: 33%;" onclick="type('남자혼자',${plNum})" class="typediv">
										<a>
											<img src="https://www.stubbyplanner.com/img_v14/tripwith/TW_1_2_w.png" width="100%">
										</a>
										<div style="margin-top: -15px; text-align: center;">
											<font style="color: white;font-size: 8pt;">남자혼자</font>
										</div>
									</div>
									
									<div style="float: left; width: 33%;" onclick="type('커플/신혼',${plNum})" class="typediv">
										<a>
											<img src="https://www.stubbyplanner.com/img_v14/tripwith/TW_1_3_w.png" width="100%">
										</a>
										<div style="margin-top: -15px; text-align: center;">
											<font style="color: white;font-size: 8pt;">커플/신혼</font>
										</div>
									</div>
									
									<div style="float: left; width: 33%;" onclick="type('여자끼리',${plNum})"class="typediv">
										<a>
											<img src="https://www.stubbyplanner.com/img_v14/tripwith/TW_2_1_w.png" width="100%">
										</a>
										<div style="margin-top: -15px; text-align: center;">
											<font style="color: white;font-size: 8pt;">여자끼리</font>
										</div>
									</div>
									
									<div style="float: left; width: 33%;" onclick="type('남자끼리',${plNum})"class="typediv">
										<a>
											<img src="https://www.stubbyplanner.com/img_v14/tripwith/TW_2_2_w.png" width="100%">
										</a>
										<div style="margin-top: -15px; text-align: center;">
											<font style="color: white;font-size: 8pt;">남자끼리</font>
										</div>
									</div>
									
									<div style="float: left; width: 33%;" onclick="type('남녀함께',${plNum})"class="typediv">
										<a>
											<img src="https://www.stubbyplanner.com/img_v14/tripwith/TW_2_3_w.png" width="100%">
										</a>
										<div style="margin-top: -15px; text-align: center;">
											<font style="color: white;font-size: 8pt;">남녀함께</font>
										</div>
									</div>
									
									<div style="float: left; width: 33%;" onclick="type('아이들과',${plNum})"class="typediv">
										<a>
											<img src="https://www.stubbyplanner.com/img_v14/tripwith/TW_3_1_w.png" width="100%">
										</a>
										<div style="margin-top: -15px; text-align: center;">
											<font style="color: white;font-size: 8pt;">아이들과</font>
										</div>
									</div>
									
									<div style="float: left; width: 33%;" onclick="type('부모님과',${plNum})"class="typediv">
										<a>
											<img src="https://www.stubbyplanner.com/img_v14/tripwith/TW_3_2_w.png" width="100%">
										</a>
										<div style="margin-top: -15px; text-align: center;">
											<font style="color: white;font-size: 8pt;">부모님과</font>
										</div>
									</div>
									
									<div style="float: left; width: 33%;" onclick="type('부모님끼리',${plNum})"class="typediv">
										<a>
											<img src="https://www.stubbyplanner.com/img_v14/tripwith/TW_3_3_w.png" width="100%">
										</a>
										<div style="margin-top: -15px; text-align: center;">
											<font style="color: white;font-size: 8pt;">부모님끼리</font>
										</div>
									</div>
								</div>
							</div>	
						</div>
						<div class="map-rootModify"  style="cursor: pointer;" onclick="uptPlanner(${plNum})">
							<div class="map-header">
								<i class="fa fa-cog fa-2x" style="color: #747474; margin-top: 9px;margin-bottom: 7px;"></i>
							</div>
							<div class="map-body">루트수정</div>
							
						</div>
						<div class="map-startDate">
							<div class="map-header">
								<i class="fa fa-cog" aria-hidden="true" style="color: #747474; margin-top: 9px;margin-bottom: 7px;">
								  <div style="font-size: 12px; font-weight: 700; float: right; margin-left: 2px; line-height: 1.2;">
								  	<fmt:formatDate value="${dDate}" pattern="yy년MM월dd일"/> 출발
								  </div>
								</i>
							</div>
							<div class="map-body"></div>
							
						</div>
						<div class="map-date">
							<div class="map-header"></div>
							<div class="map-body">${days}일간</div>
							
						</div>
					</div>
				</div>
					<div class="calendar-wrapper">
						<div id="calendar"></div>
					</div>
				</div>
			
			<div class="middle-contents">
				<div class="middle-title">
					<h3 class="contents-title">여행루트</h3>
				</div>
				<div class="middle-wrapper" style="height: 300px;">
					
		<!-- 수정 ㅡ 교통수단 추가 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->   
               <div class="swiper-container" style="margin-top: 20px; height: 250px;">   
                     <div class="nolist swiper-wrapper">
                        <c:forEach items="${planner}" var="vo" varStatus="p">
                           <div class="swiper-slide">
                              <div class="nolist-dot"></div>
                              <div class="nolist-region">${vo.region}</div>
                              <c:if test="${planner.size() gt 1 and p.index lt planner.size()-1}"> 
                                 <div class="nolist-line"></div>
                                 <div class="nolist-transfer-comment"><fmt:formatDate value="${planner.get(p.count).deDate}" pattern="MM월dd일"/> 이동<fmt:formatDate value="${planner.get(p.count).deDate}" pattern="(E)"/></div>
                                 <div class="nolist-transfer">
                                    <c:choose>
                                       <c:when test="${planner.get(p.count).transfer eq '기차' }">
                                          <i class="fa fa-train"></i>                                    
                                       </c:when>
                                       <c:when test="${planner.get(p.count).transfer eq '버스' }">
                                          <i class="fa fa-bus"></i>                                    
                                       </c:when>
                                       <c:when test="${planner.get(p.count).transfer eq '자차' }">
                                          <i class="fa fa-car"></i>
                                       </c:when>
                                       <c:when test="${planner.get(p.count).transfer eq '항공' }">
                                          <i class="fa fa-plane"></i>
                                       </c:when>
                                       <c:when test="${planner.get(p.count).transfer eq '택시' }">
                                          <i class="fa fa-taxi"></i>
                                       </c:when>
                                       <c:otherwise>
                                          <font style="font-size: 12px; font-weight: bold; line-height: 36px;"> 미정</font>
                                       </c:otherwise>
                                    </c:choose>
                                 </div>
                              </c:if>               
                              
<!-- 수정ㅡ 인풋창 디스플레이 none ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->                              
                              <div class="notlist-ballon" style="display: none"></div>
                              <div class="notlist-ballon2" style="display: none"> 
                                 <div class="ballon2-title">
                                    <div>버스로 이동</div>
                                 </div>
                                 <div class="ballon2-contents">
                                    <div><input type="text"></div>
                                 </div>
                              </div>
<!-- 수정ㅡ 몇밤 자는지 추가 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
                              <div class ="notlist-showSleep"> ${vo.bak }박 </div>
                              <div class="notlist-cityImg">
                                 <img alt="${vo.region }" src="../city/${vo.polyPath}.jpg">
                              </div>
                           </div>
                        </c:forEach>
                     </div>
               
                  </div>
                  
               </div>
            </div>
         </div>

			<!-- 여행루트 끝 -->
			<!-- 세부일정표 시작 -->
			<div class="middle-contents2">
				<div class="midde-title">
					<h3 class="contents-title">일정표</h3>
				</div>
				<div class="middle-wrapper">
					<!-- 체크한 관광지 -->
					<div class="tourlist">
						<div class="swiper-container swiper-container2">
							<div class="swiper-wrapper">
								<c:forEach items="${wishlist}" var="vo">
									<div class="swiper-slide" style="width: 170px;">
										<div class="card">
										
										  <div class="tour-img">
												<img src="${vo.firstimage}">
													<div class="tour-name">
														<font >${vo.title}</font>
														<input id="votitle" type="hidden" value="${vo.title}">
													</div>
										  </div>
										<a data-toggle="modal" class="md" data-target="#myModal" title="${vo.arCode}">
											<div class="tour-add">
												<font><i class="fa fa-plus"></i>일정추가</font>
											</div>
										</a>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<!-- 일정표 -->
					<div class="schedule-wrapper">
						<div class="swiper-container">
							<ul class="swiper-wrapper nolist" >
								<c:forEach items="${planner}" var="vo">
									<!-- li 하나 -->
					                        <li class="swiper-slide schedule-li" style="height: 560px;">
					                           <div class="schedule-top">
					                              <div class="schedule-top2">
					                                 <a data-toggle="modal" class="md2" data-target="#mySc">
					                                    <div class="schedule-map">
					                                       <img src="https://www.stubbyplanner.com/img_v15/icon_map.png">
					                                       <div class="schedule-map-title">지도</div>
					                                    </div>
					                                 </a>
					                              </div>
					                              <div class="sbold">
					                              <fmt:formatDate value="${vo.deDate}" pattern="MM/dd"/>                         
					                                 <span style="font-size: 10pt; color: #c0c0c0"><fmt:formatDate value="${vo.deDate}" pattern="E"/> </span>
					                              </div>
					                              <div class="sarea">
					                                 <div style="line-height: 110%; height: 32px;">${vo.region}</div>
					                              </div>
					                           </div>
					                           <div class="schedule-body">
					                              <div class="schedule-body-row">0~9
					                                 <div class="schedule-body-content">
					                                  <a data-toggle="modal" class="md" data-target="#mySc">
					                                 <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 8 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
													 </a>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">9
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 9 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">10
					                                 <div class="schedule-body-content">
					                                  <a data-toggle="modal" class="md" data-target="#mySc">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 10 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
														<input type="hidden" class="cost" title="${sc.cost}">
														<input type="hidden" class="start" title="${sc.start}">
														<input type="hidden" class="scname" title="${sc.scName}">
														
													  </c:forEach>
													  </a>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">11
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 11 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">12
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 12 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">13
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 13 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">14
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 14 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">15
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 15 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">16
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 16 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">17
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 17 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">18
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 18 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">19
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 19 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">20
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 20 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">20-24
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 21 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                              <div class="schedule-body-row">숙소
					                                 <div class="schedule-body-content">
					                                  <c:forEach items="${schedule}" var="sc">
														<p><c:if test="${sc.start eq 8 && sc.arCode eq vo.arCode}">${sc.scName}</c:if>
													 </c:forEach>
					                                 </div>
					                              </div>
					                           </div>
					                        </li>
								</c:forEach>
								
							</ul>
						</div>
						
					</div>
				</div>
			
			</div>
			
		</div>
		
	</div>
	<div id="myModal" class="modal fade" role="dialog">
  		<div class="modal-dialog">
		<div class="m-wrapper"></div>
		<div class="m-box row">
			<button type="button" class="close" data-dismiss="modal">X</button>
			<div style="clear:both;display: inline-block; margin-left: 20px;">
				<div class="form-group">
					<div style="font-weight: bold; font-size: 14pt; margin: 20px 0 20px 0;">여행 일정 추가하기</div>
					
					<div style="font-size: 10pt;">
						일정표에 추가 할 날짜와 시간을 선택해주세요!
					</div>
					<div style="margin-left: 20px; margin-bottom: 20px;">
						<div style="float:left; width: 50%;margin-right: 10px; ">
							<select class="form-control  col-xs-2" style="height: 30pt; font-size: 12pt; font-weight: 600;">
								<c:forEach items="${planner}" var="vo">
									<option value="" id="a" class="b" title="${vo.arCode}">${vo.region}</option>
								</c:forEach>
							</select>
						</div>
						<div style="float:left; width: 35%;">
							<select name="start" title="start" id="start" class="form-control" style="height: 30pt; font-size: 12pt; font-weight: 600;">
								<option value="8">0~9시</option>
								<c:forEach  var="i" step="1" begin="9" end="20">
									<option value="${i}">${i}시</option>
								</c:forEach>
							</select>
						
						</div>
					</div>
					<div style="margin-top: 20px;">
						<div class="form-group" >
						   <label style="margin-top: 20px;">일정의 이름을 달아주세요!</label>
						   <input type="text" name="scName" id = "scName" placeholder="ex) 밥먹기" class="int form-control">
						 </div>
												
						<div class="form-group">
						   <label>일정의 예상비용은 얼마인가요?</label>
						   <input type="text" name="cost" id="cost" placeholder="ex) 5000(원)" class="int form-control">
						 </div>

						<input type="hidden" name="title" id="vot" value="${vo.title}" title="${vo.title}">
					</div>
					<div style="margin-left:150px; margin-top: 30px; margin-bottom:20px; width: 50%; height: 20px;">
						<button type="button" onclick="addSchedule('a',cost,start,'d',${plNum},0);"  style=" width: 100%; height:30px; background:#3ad195;border-radius:5px;border:0px solid #c0c0c0;color:#fff;">일정표추가</button>
						
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
	
	<!-- 스케줄 모달 -->
	<div id="mySc" class="modal fade" role="dialog">
  		<div class="modal-dialog">
  		<div class="m-wrapper"></div>
  			<div class="m-box row">
				<button type="button" class="close" data-dismiss="modal">X</button>
	  			<div>
	  				<p>일정명 : ㅇㅇ</p>
	  				예상비용 : ㅇㅇ 원
	  				주소 :
	  				관광이름 :
	  				시간 : 
	  				<c:forEach items="${scInfo}" var="vo">
	  					<c:if test=""></c:if>
	  					일정명 : ${vo.title}
	  					예상비용 : ${vo.cost}
	  					
	  				</c:forEach>
	  				
	  			</div>
  			</div>
  		</div>
  	</div>
	
	<!-- </form> -->
	<div style="display: none;">
   <c:forEach items="${planner }" var="plan">
      <p class="pp-index" >${plan.polyPath }</p>
      <input id="${plan.region }" title="${plan.deDate }" value="${plan.arDate }" class="sch-eventList"  type="hidden" >
   </c:forEach>
</div>
	<script type="text/javascript">

		var scname; 

		$(".md2").click(
			function(){
				scname = $(this).attr("title");
				alert(scname);
			}
		);
		
		var tt;
		var title2;
		
		$(".md").click(
				function(){
					
					tt = $(this).attr("title");
					title2 = $(this).prev().children().children("input").val();

					
					$(".b").each(function(){
						if($(this).attr("title") == tt){
								$(this).prop("selected",true);
						}
					});
				}
		);
		
		function addSchedule(scName, cost, start, title, plNum, arCode){

			
			var scName = $("#scName").val();
			var cost = $("#cost").val();
			var start = $("#start").val();
			var arCode = tt;
			var title = title2;
			var a =$("#a").val(arCode);
			
			alert(a);
			
			$.ajax({
				type: "GET",
				url:"./addSchedule",
				data:{
					scName:scName,
					cost:cost,
					start:start,
					title:title,
					plNum:plNum,
					arCode:arCode
				},
				success: function(result){
					alert("일정이 추가되었습니다.");
				},
				error: function(){
					alert("fail");
				},
				complete: function(){
					
				}
			});
	
		}


		/* type 바꾸기 */
		function type(type,plNum){
	
			$.ajax({
				type:"GET",
				url:"./type",
				data:{
					type:type,
					plNum:plNum
				},
				success:function(result){
					
				},
			});
			location.reload();
			event.stopImmediatePropagation();
		}

	
	
		function transfer(){
			alert('dd');
		}

		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스

		//////////////////////////////////////////////////////////////잠시 수정
		
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

		$('.map-peopleType').click(function(){
			
			$('.map-peopleType').toggleClass("peopleTypeSwiper");
			$('.swiper-before').toggleClass("swiper");
			$('.swiper-modal').toggleClass("swiper");	
		});

		
		$('.nolist-transfer').click(function(){
			$('.swiper-vehicle-wrapper').toggleClass("swiper");
			event.stopImmediatePropagation();
		});


		/* swiper */
		   var swiper = new Swiper('.swiper-container', {
		      slidesPerView: 5,
		      spaceBetween: 0,
		      freeMode: true,
		      pagination: {
		        el: '.swiper-pagination',
		        clickable: true,
		      },
		    });

		   var swiper = new Swiper('.swiper-container2', {
			      slidesPerView: 7,
			      spaceBetween: 0,
			      freeMode: true,
			      pagination: {
			        el: '.swiper-pagination',
			        clickable: true,
			      },
			    });
		///////////////////////////////////////////////////////////루트수정
		
		  function uptPlanner(a){
            if(confirm("루트를 수정하시겠습니까?")){

               location.href="../planner/updatePlanner?plNum="+a;
               
               }
         }

   
      
   </script>
   <script src="../js/cityList.js"></script>
   <script src="../js/kakaoMap.js" ></script>
   <script src="../js/calendar/fullCalendar.js" ></script>
   <script src="../js/calendar/daygrid.js" ></script>
   <script src="../js/calendar/interaction.js" ></script>
   <script src="../js/calendar/timegrid.js" ></script>
   <script type="text/javascript">

///////////////////////////////////////////////////////////달력

   var color = ['#FFABAB','#A79AFF', '#AFF8D8', '#FF9CEE', '#6EB5FF'];
   

   var dd = "${dDate}";
   dd = dd.substr(0,10);

   var sch = {};
   sch.title = '출발';
   sch.start=dd;
   var schedule = [];
   schedule.push(sch);

   var i = 0;
   $(".sch-eventList").each(function() {
      sch = {};
      sch.title = $(this).prop("id");
      dd = $(this).prop("title");
      dd = dd.substr(0,10);
      sch.start = dd+"T02:00:00";
      dd = $(this).val();
      dd = dd.substr(0,10);
      sch.end = dd+"T12:00:00";
      sch.color = color[i%4];
      schedule.push(sch);
      i++;
   });

   
   
   document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        
        var calendar = new FullCalendar.Calendar(calendarEl, {
           locale:'ko',
          plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
          defaultView: 'dayGridMonth',
          defaultDate: '${dDate}',
          header: {
            left: 'prev,today',
            center: 'title',
            right: 'next'
          },
          eventColor: 'sky',
          height:450,
          displayEventTime: false,
          events : schedule,
        });
        calendar.render();
      });


		
	</script>
</body>
</html>