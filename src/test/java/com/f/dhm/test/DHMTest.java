package com.f.dhm.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Sort;
import org.springframework.test.annotation.Commit;

import com.f.dhm.Member.MemberRepository;
import com.f.dhm.Member.MemberService;
import com.f.dhm.Member.MemberVO;
import com.f.dhm.planner.PlannerCommentRepository;
import com.f.dhm.planner.PlannerCommentVO;

@SpringBootTest
//@Transactional(rollbackOn = Exception.class)
public class DHMTest {

	@Resource
	private MemberRepository memberRepository;
	
	@Autowired
	private PlannerCommentRepository commentRepository;
	
	//@Test
	void memberTest()throws Exception{
		MemberVO memberVO = new MemberVO();
		memberVO.setId("test1");
		memberVO.setPw("pw1");
		memberVO.setName("name1");
		memberVO.setEmail("email1@");
		memberVO.setGender(1);
		memberVO.setBirth(new Date(Calendar.getInstance().getTimeInMillis()));
		memberVO.setMailCheck(1);
		memberVO.setSocial(1);
		memberVO.setGrade(1);
		memberVO = memberRepository.save(memberVO);
		System.out.println(memberVO.getEmail());
		//Optional<MemberVO> mv = memberRepository.findById("test");
		//System.out.println(mv.get().getEmail());
		
	}
	
	//@Test
	void test2() throws Exception{
		memberRepository.deleteById("springcom123");
		boolean exist=memberRepository.existsById("springcom123");
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		System.out.println("exist : "+exist);
	}
	
	//@Test
	void test3()throws Exception{
		List<PlannerCommentVO> commentVOs=commentRepository.findByPlNum(52);
		commentVOs.forEach(System.out::println);
	}
	
	@Test
	void test5()throws Exception{
		//List<PlannerCommentVO> commentVOs=commentRepository.findAll();
		//commentVOs.forEach(System.out::println);
		
		//List<PlannerCommentVO> commentVOs=commentRepository.findAll();
		System.out.println("^^^^^^^^^^^^^^^^^");
		
		List<PlannerCommentVO> commentVOs=commentRepository.findAllOrderByRegDateDesc();
		commentVOs.forEach(System.out::println);
	}
}
