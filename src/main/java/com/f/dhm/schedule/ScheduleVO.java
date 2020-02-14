package com.f.dhm.schedule;



import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.criteria.CriteriaBuilder.In;
import javax.validation.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "schedule")
public class ScheduleVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int scNum;
	//@NotEmpty
	private Integer plNum;
	@NotEmpty
	private String scName; //스케줄이름
	@NotEmpty
	private String tour; //관광지이름

	private Integer cost;
	//@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "")
	private Integer start;
	private Date day;
	private String transfer;
	private Integer arCode;
}
