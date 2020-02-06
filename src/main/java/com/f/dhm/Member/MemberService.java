package com.f.dhm.Member;

import java.io.File;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;
import com.f.dhm.util.FilePathGenerator;
import com.f.dhm.util.FileSaver;
import com.f.dhm.Member.MemberVO;

@Service
@Transactional(rollbackOn = Exception.class)
public class MemberService {

	@Autowired
	private MemberRepository memberRepository;	
	@Autowired
	private FilePathGenerator filePathGenerator;
	@Autowired
	private FileSaver fileSaver;
	@Autowired
	private MemberFilesRepository memberFilesRepository;
	
	
	
	//로그인----------------------------------------
	public MemberVO memberLogin(MemberVO memberVO)throws Exception{
		
		return memberRepository.findByIdAndPw(memberVO.getId(), memberVO.getPw());
	}
	//회원가입----------------------------------------
	
	public void memberJoin(MemberVO memberVO)throws Exception{

		memberRepository.save(memberVO);															
	}
	//제약 조건----------------------------------------
	public boolean memberJoinValidate(MemberVO memberVO, BindingResult bindingResult)throws Exception{
		boolean check = false;
														
		if(bindingResult.hasErrors()) {
			check=true;															
		}
															
		if(!memberVO.getPw().equals(memberVO.getPw2())) {
			check = true;													
			bindingResult.rejectValue("pw2", "Not Equal PW", "PW가 일치하지 않습니다.");
		}	
		
		boolean ch = memberRepository.existsById(memberVO.getId());		
		
		if(ch) {			
			check = true;											
//			javascript로 실행
//			bindingResult.rejectValue("id", "Duplicate Id", "중복 ID입니다");														
		}			
		System.out.println("check"+check);
		
		return check;
	}
	//프로필 변경----------------------------------------
	public void memberMypage(MemberVO memberVO)throws Exception{		
		
		
		memberRepository.save(memberVO);
	}
	//ID 체크----------------------------------------
	public boolean memberIdCheck(String id)throws Exception{
		
		return memberRepository.existsById(id);
	}
	//EMAIL 체크----------------------------------------
	public MemberVO memberEMAILCheck(String email)throws Exception{
		
		return memberRepository.findByEmail(email);
	}
	//프로필 사진 변경----------------------------------------
	public boolean memberMypageImg(MemberVO memberVO,HttpSession session, MultipartFile files)throws Exception{

		MemberFilesVO memberFilesVO = new MemberFilesVO();
		String realPath=session.getServletContext().getRealPath("/imgs/member");
	
		memberFilesVO.setMemberVO(memberVO);
		memberFilesVO.setFname(fileSaver.save2(realPath, files));
		memberFilesVO.setOname(files.getOriginalFilename());

		memberFilesRepository.save(memberFilesVO);
		memberVO =  memberRepository.findById(memberVO.getId()).get();

		return memberFilesRepository.existsById(memberVO.getMemberFilesVO().getFnum());	
	}
	
	//회원 정보 변경----------------------------------------
	public void memberUpdatePage(MemberVO memberVO)throws Exception{
		
		memberRepository.save(memberVO);
	}
	//회원 탈퇴----------------------------------------
	public void memberGetoutPage(MemberVO memberVO)throws Exception{
		
		memberRepository.delete(memberVO);
	}
	
	

	
	
}//main
