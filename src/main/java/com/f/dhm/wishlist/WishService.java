package com.f.dhm.wishlist;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.f.dhm.Member.MemberVO;
import com.f.dhm.planner.PlannerService;
import com.f.dhm.planner.PlannerVO;

@Service
public class WishService {

	@Autowired
	private WishRepository repository;

	public void wishAdd(List<WishVO> wishlist) throws Exception{
		 
		 repository.saveAll(wishlist);
		 boolean check = repository.existsById(wishlist.get(0).getNum());
		 System.out.println("test"+check);
	}
	
}
