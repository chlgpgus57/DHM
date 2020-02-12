package com.f.dhm.funding;

import static org.junit.jupiter.api.Assertions.*;

import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.annotation.Resource;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;


@SpringBootTest
@Transactional
class FundingTest {
	
	
	@Resource(name = "fundingRepository")
	private FundingRepository fundingRepository;
	
	@Resource(name = "fundingJoinRepository")
	private FundingJoinRepository fundingJoinRepository;
	
	@Resource(name = "fundingService")
	private FundingService fundingService;
	
//	@Test
//	void writeTest() {
//		FundingVO fundingVO = new FundingVO();
//		fundingVO.setPNum(1);
//		fundingVO.setFName("펀딩 테스트");
//		fundingVO.setContents("펀딩 테스트입니다.");
//		fundingVO.setGoal(100000000);
//		fundingVO.setStatus(0);
//		fundingVO.setId("test");
//		fundingVO.setEndTime(Calendar.getInstance().getTime());
//		fundingVO.setPeople(5);
//		
//		fundingRepository.save(fundingVO);
//		
//	}
	
//	@Test
	void selectTest() throws Exception{
//		FundingVO fundingVO = fundingRepository.fundingSelect(2);
		Optional<FundingVO> fundingVO = fundingRepository.findById(3);
	}
	
//	@Test
//	void updateTest() throws Exception{
//		fundingService.fundingUpdate();
//	}
	
//	@Test
	void deleteTest() throws Exception{
		fundingService.fundingDelete(1);
	}
	
//	@Test
	void listTest() throws Exception{
		List<FundingVO> ar = fundingRepository.fundingList();
//		Page<FundingVO> ar2 = fundingService.fundingList(pager);
	}
//	@Test
	void listTest2() throws Exception{
//		List<FundingJoinVO> ar = fundingJoinRepository.findByFNum(18);
		FundingVO fundingVO = new FundingVO();
		fundingVO.setNum(18);
		Optional<FundingVO> ar = fundingRepository.findById(18);
		fundingVO = ar.get();
		System.out.println(fundingVO.getFundingJoinVOs().size());
	}
	
	@Test
	void joinSelectTest() throws Exception{
//		FundingVO fundingVO = new FundingVO();
//		List<FundingVO> ar = fundingRepository.fundingJoinSelect("ttt18");
//		fundingVO = ar.get(0);
//		System.out.println(fundingVO.getFundingJoinVOs().size());
		FundingVO fundingVO = new FundingVO();
		List<FundingVO> ar = fundingRepository.findByFundingJoinVOsParticipationId("ttt16");
		System.out.println(ar.get(0).getFundingJoinVOs().size());
		for (int i = 0; i < ar.size(); i++) {
			System.out.println(ar.get(i).getId());
			System.out.println(ar.get(i).getFundingJoinVOs().get(0).getNum());
			System.out.println(ar.get(i).getFundingJoinVOs().get(0).getParticipationPeople());
		}
		
	}
}
