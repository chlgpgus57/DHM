package com.f.dhm.schedule;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.f.dhm.planner.PlannerService;
import com.f.dhm.planner.PlannerVO;

@Controller
@RequestMapping("/schedule/**")
public class ScheduleController {
	
	@Autowired
	private ScheduleService scheduleService;
	@Autowired
	private PlannerService plannerService;
	
	
	@GetMapping("schedulePage")
	public String plannerPage(ModelAndView mv, PlannerVO plannerVO) throws Exception{
		
		plannerVO = plannerService.plannerSelect(plannerVO);
		List<ScheduleVO> ar = scheduleService.scheduleList();
		mv.addObject("plannerVO", plannerVO);
		mv.addObject("list", ar);
		mv.setViewName("/schedule/schedulePage");
		return "schedule/schedulePage";
	}
	
	@GetMapping("showList")
	public ModelAndView viewApi() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/schedule/showList");
		return mv;
	}
	
	@GetMapping("addSchedule")
	public ModelAndView addSch(String cityName, String startDate, String endDate, String count) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("cityName", cityName);
		mv.addObject("startDate", startDate);
		mv.addObject("endDate", endDate);
		mv.addObject("count", count);
		mv.setViewName("/schedule/addSchedule");
		
		return mv;
	}
}
