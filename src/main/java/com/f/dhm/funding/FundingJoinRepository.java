package com.f.dhm.funding;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FundingJoinRepository extends JpaRepository<FundingJoinVO, Integer> {
	

//	@Query("SELECT SUM(fj.gage) FROM fundingJoin fj")
//	FundingJoinVO gageSum() throws Exception;
	//fundingJoin
	//펀딩한 사람이 확인
//	@Query(value = "SELECT f.fNum, j.participationPeople, (j.price * j.participationPeople) total, j.id, j.email FROM funding f "
//			+ "RIGHT JOIN fundingJoin j ON f.fNum = j.fNum"
//			+ " WHERE f.fNum = ?1", nativeQuery = true)
//	List<FundingVO> fundingJoinList(int num) throws Exception;

	
//	//**member 추가 후에 테스트**/
//	//펀딩 참여한 사람이 확인
//	@Query("SELECT f.fNum, f.pNum, f.contents, m.name, m.email, j.price, j.participationPeople, j.participationPeople " + 
//			"FROM funding RIGHT JOIN member ON f.fName = m.name JOIN fundingJoin ON f.fNum = j.fNum WHERE j.id = ?1")
//	Object[] fundingJoinSelect(String id) throws Exception;
//	
	
}
