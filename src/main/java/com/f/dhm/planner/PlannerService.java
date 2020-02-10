package com.f.dhm.planner;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.f.dhm.Member.MemberVO;

@Service
@Transactional
public class PlannerService {


	@Autowired
	private PlannerRepository repository;
	@Autowired
	private PlannerCommentRepository2 commentRepository;

	public PlannerCommentVO2 getComment(int cNum)throws Exception{
		PlannerCommentVO2 commentVO=commentRepository.findById(cNum).get();
		return commentVO;
	}
	
	public List<PlannerCommentVO2> getCommentList(int plNum)throws Exception{
		return commentRepository.findByPlNum(plNum);
	}
	
	public boolean pcomment(PlannerCommentVO2  plannerCommentVO, int plNum, HttpSession session)throws Exception{
		MemberVO memberVO=(MemberVO) session.getAttribute("member");
		plannerCommentVO.setId(memberVO.getId());
		boolean check=false;
		plannerCommentVO.setPlNum(plNum);
		commentRepository.save(plannerCommentVO);
		PlannerCommentVO2 exist=commentRepository.findById(plannerCommentVO.getCNum()).get();
		if(exist != null) {
			//exist!!
			check=true;
		}
		else {
			//not exist!!
			check=false;
		}
		return check;
	}
	
	//hyehyeon
	public List<PlannerVO> plannerSelect(int plNum, HttpSession session) throws Exception {

		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		
		return repository.findByIdAndPlNum(memberVO.getId(),plNum);
	}

	public String plannerTitle(int plNum) throws Exception{
		return	repository.plannerTitle(plNum);
	}
	
	public String plannerType(int plNum) throws Exception{
		return repository.plannerType(plNum);
	}
	
	public List<MyPlannerVO> plannerList(PlannerVO plannerVO, HttpSession session) throws Exception {

		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		
		return repository.plannerList(memberVO.getId());
	}
	
	public int days(int plNum) throws Exception{
		return repository.days(plNum);
	}
	
	/////////////////////////////////////////////////
	public void bakTotal(PlannerVO plannerVO) throws Exception{
	  
	  
	
	}
	 
	public void typeUpdate(String type, HttpSession session, int plNum) throws Exception{
		
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
	
		repository.typeUpdate(type,plNum);
		
	}
	public int getPlnum() throws Exception{
		List<PlannerVO> list = repository.findAllByOrderByPlStepDesc();
		return	list.get(0).getPlNum()+1;
	}
	
	public int saveList(List<PlannerVO> list) throws Exception{
		list = repository.saveAll(list);
		
		return list.get(0).getPlNum();
	}
	
	public PlannerVO saveOne(PlannerVO plannerVO) throws Exception{
		return repository.save(plannerVO);
	}
	
	public void plannerDel(String id, int plNum) throws Exception{
		List<PlannerVO> delList =repository.findByIdAndPlNum(id, plNum);
		
		repository.deleteAll(delList);
		
	}

}
