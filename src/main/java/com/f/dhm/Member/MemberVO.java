package com.f.dhm.Member;


import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.lang.Nullable;

import com.f.dhm.planner.PlannerCommentVO;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
@Data
@Entity
@Table(name = "members")
public class MemberVO {

	
	@Id
	@NotEmpty
	private String id;
	@NotEmpty
	private String pw;
	@Transient
	private String pw2;
	@NotEmpty
	private String name;
	@NotEmpty
	private String email;
	@CreationTimestamp
	private Date birth;	
	private int gender;	
	private int mailCheck;
	private int grade;
	private int social;
	private String mymsg;
	private String introduce;
	private String live;
	private String language;
	private String tour;
	private String tema;
	private String helpcity;
	private int num;
	@CreationTimestamp
	private java.util.Date joinDay;
		
	@Nullable
	@JsonIgnore
	@OneToOne(mappedBy = "memberVO", cascade = CascadeType.ALL)
	private MemberFilesVO memberFilesVO;

	
	
}
