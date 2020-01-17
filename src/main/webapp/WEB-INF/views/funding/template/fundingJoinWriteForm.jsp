<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

		<form:form id="frm" modelAttribute="fundingVO">
			<div class="form-group">
			<input type="hidden" name="fNum" value="${vo.num}">
		      <label for="name">Funding Name :</label>
		      <form:input  class="form-control" path="name" value="${vo.name}" readonly="true"/>
		      <form:errors path="name"></form:errors>
		    </div>
		    
			<div class="form-group">
		    <label for="contents">Funding Contents : </label>
			<form:input cssClass="form-control" path="contents" id="contents" value="${vo.contents}" readonly="true"/>
			<form:errors  path="contents" cssClass="error"/>
			</div>
		
		    <div class="form-group">
		      <label for="price">Funding Price : </label>
		      <form:input placeholder="Enter price" class="form-control" path="price" value="${vo.price}" readonly="true"/>
		      <form:errors path="price" cssClass="error"/>
		    </div>
		    
		    <div class="form-group">
		      <label for="id">Funding ID : </label>
		      <form:input class="form-control" path="id"  value="${member.id}" />
		      <form:errors path="id" cssClass="error"/>
		    </div>
			
			<div class="form-group">
		      <label for="startTime">Funding StartTime : </label>
		      <input type="datetime" class="form-control" name="start" value="${vo.startTime}" readonly="readonly"/>
		      
		    </div>
		    
		    <div class="form-group">
		      <label for="endTime">Funding EndTime : </label>
		     <input type="datetime" class="form-control" name="end" value="${vo.endTime}" readonly="readonly"/>
		     
		    </div>
		    
		    <div class="form-group">
		      <label for="people">Funding People : </label>
		       <form:input class="form-control" path="participationPeople" id="participationPeople"/>
		       <form:errors path="participationPeople" cssClass="error"/>
		    </div>
			
		     <div class="row" style="margin-top: 50px;">
		    <input type="button" id="participation" class="btn btn-success col-sm-3" value="participation">
		    <!-- <button type="submit" class="btn btn-success col-sm-3">Participation</button> -->
		    <input type="button" id="re" class="btn btn-primary col-sm-3" value="Back">
		   	</div> 
		</form:form>
		<script type="text/javascript">
$("#participation").click(function() {
	/* alert($("#participationPeople").val()); */
	if($("#participationPeople").val() == ""){
		alert("펀딩에 참여할 인원을 입력해주세요.");
	}else {
		$("#frm").submit();
	}
});
$("#re").click(function(){
	location.href= "./fundingList";
	});
</script>
