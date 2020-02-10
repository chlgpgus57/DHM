<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

		<form:form id="frm" modelAttribute="fundingVO">
			<div class="form-group">
			<input type="hidden" value="${vo.num}" name="num">
			<input type="hidden" value="${vo.id}" name="id">
			<input type="hidden" value="${vo.gage}" name="gage">
			<input type="hidden" value="${vo.status}" name="status">
		      <label for="name">Funding Name :</label>
		      <form:input  class="form-control" path="name" value="${vo.name}"/>
		      <form:errors path="name"></form:errors>
		    </div>
		    
			<div class="form-group">
		    <label for="contents">Funding Contents : </label>
			<%-- <form:textarea cssClass="form-control" path="contents" id="contents" value=""/> --%>
			<textarea id="contents" name="contents">${vo.contents}</textarea>
			<form:errors  path="contents" cssClass="error"/>
			</div>
		
			 <div class="form-group">
		      <label for="price">Funding Price : </label>
		      <form:input placeholder="Enter price" class="form-control" path="price" value="${vo.price}"/>
		      <form:errors path="price" cssClass="error"/>
		    </div>
		
		    <div class="form-group">
		      <label for="goal">Funding Goal : </label>
		      <form:input placeholder="Enter goal" class="form-control" path="goal" value="${vo.goal}"/>
		      <form:errors path="goal" cssClass="error"/>
		    </div>
			
			<div class="form-group">
		      <label for="startTime">Funding StartTime : </label>
		      <input type="hidden" class="form-control" name="sTime" value="${vo.startTime}"/>
		      <input type="date" class="form-control" min="2020-01-15" name="start" id="start"/>
		      <input type="time" class="form-control" name="time1" id="time1"/>
		    </div>
		    
		    <div class="form-group">
		      <label for="endTime">Funding EndTime : </label>
		     <input type="hidden" class="form-control" name="eTime" value="${vo.endTime}"/>
		      <input type="date" class="form-control" min="2020-01-16" name="end" id="end"/>
		        <input type="time" class="form-control" name="time2" id="time2"/>
		    </div>
		    
		    <%-- <div class="form-group">
		      <label for="people">Funding People : </label>
		       <form:input class="form-control" path="people" value="${vo.people}"/>
		       <form:errors path="people" cssClass="error"/>
		    </div> --%>
			
		     <div class="row" style="text-align: center; margin-bottom: 30px;">

		    	<input type="button" id="re" class="btn btn-primary col-sm-2" value="back" style="padding-left: 15px; padding-right: 15px; float: right;">
		    	<input type="button" id="write" class="btn btn-success col-sm-2" value="Update" style="padding-left: 15px; padding-right: 15px; float: right;">
		   	</div> 
		</form:form>