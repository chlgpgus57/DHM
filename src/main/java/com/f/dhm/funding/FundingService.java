package com.f.dhm.funding;

import java.util.Optional;
import javax.annotation.Resource;
import javax.transaction.Transactional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import com.f.dhm.util.Pager;

@Transactional
@Service
public class FundingService {
	
	@Resource(name = "fundingRepository")
	private FundingRepository fundingRepository;
	
	public void fundingWrite(FundingVO fundingVO) throws Exception{
		fundingRepository.save(fundingVO);
	}//write
	
	public Optional<FundingVO> fundingSelect(int num) throws Exception{
		return fundingRepository.findById(num);
	}//select
	
	public Pager fundingList(Pager pager) throws Exception{
		pager.makePageRequest(Sort.by("num").descending());
		
		Page<FundingVO> p = fundingRepository.findByNumGreaterThan(0, pager.getPageable());
		
		pager.setPageList(p);
		
		pager.makeNum();
		
		return pager;
	}//list

	public void fundingUpdate(FundingVO fundingVO) throws Exception{
		fundingRepository.fundingUpdate(fundingVO.getName(), fundingVO.getContents(), fundingVO.getPrice(),
				fundingVO.getGoal(), fundingVO.getStartTime(), fundingVO.getEndTime(), fundingVO.getPeople(), fundingVO.getNum());
//		fundingRepository.fundingUpdate("testest", "테스트 테스트 테스트 테스트", 
//				2000000, Calendar.getInstance().getTime(), Calendar.getInstance().getTime(), 3, 2);
	}

	public void fundingDelete(int num) throws Exception{
		fundingRepository.deleteById(num);
	}//delete


	
}
