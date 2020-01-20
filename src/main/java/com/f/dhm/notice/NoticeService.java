package com.f.dhm.notice;



import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {

	@Autowired
	private NoticeRepository noticeRepository;
	
	public void noticeUpdate(NoticeVO noticeVO)throws Exception{
		System.out.println("11111111111111111111111");
		System.out.println("noticeVO.getNum() : "+noticeVO.getNum());
		System.out.println("noticeVO.gettitle : "+noticeVO.getTitle());
		System.out.println("noticeVO.getContents() : "+noticeVO.getContents());
		System.out.println("noticeVO.getId() : "+noticeVO.getId());
		System.out.println("NOTICEvo.DATE() : "+noticeVO.getRegDate());

		NoticeVO ntc=noticeRepository.findById(noticeVO.getNum()).get();
		noticeVO.setRegDate(ntc.getRegDate());
		
		noticeRepository.save(noticeVO);
	}
	
	public void noticeDelete(int num)throws Exception{
		noticeRepository.deleteById(num);
	}
	public NoticeVO selectById(int num)throws Exception{
		NoticeVO noticeVO=noticeRepository.findById(num).get();
		int hit=noticeVO.getHit();
		noticeVO.setHit(hit++);
		return noticeVO;
	}
	public List<NoticeVO> noticeList()throws Exception{
		 return noticeRepository.findAll();
	}
	public void noticeWrite(NoticeVO noticeVO)throws Exception{
		noticeRepository.save(noticeVO);
	}
	
	public Page<NoticeVO> noticeListPage(Pageable pageable)throws Exception{
		return noticeRepository.findAll(pageable);
	}
	
}
