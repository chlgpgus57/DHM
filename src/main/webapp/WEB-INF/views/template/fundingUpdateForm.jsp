<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

		<form:form id="frm" modelAttribute="fundingVO">
			<div class="form-group">
			<input type="hidden" value="${vo.num}" name="num">
		      <label for="name">Funding Name :</label>
		      <form:input  class="form-control" path="name" value="${vo.name}"/>
		      <form:errors path="name"></form:errors>
		    </div>
		    
			<div class="form-group">
		    <label for="contents">Funding Contents : </label>
			<form:textarea cssClass="form-control" path="contents" id="contents" value="${vo.contents}"/>
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
		    
		    <div class="form-group">
		      <label for="people">Funding People : </label>
		       <form:input class="form-control" path="people" value="${vo.people}"/>
		       <form:errors path="people" cssClass="error"/>
		    </div>
			
		     <div class="row" style="margin-top: 50px;">
		    <input type="button" id="write" class="btn btn-danger col-sm-3" value="Update">
		   	</div> 
		</form:form>