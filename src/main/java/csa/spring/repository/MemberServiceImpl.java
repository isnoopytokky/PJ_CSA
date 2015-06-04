package csa.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import csa.spring.dao.MemberDao;
import csa.spring.model.Member;
import csa.spring.service.MemberService;



@Service
public class MemberServiceImpl implements MemberService{
		
	
	@Autowired
	private MemberDao memberDao;

	@Transactional
	public void add(Member member) {
		memberDao.add(member);
	}

	@Transactional
	public void edit(Member member) {
		memberDao.edit(member);
	}

	@Transactional
	public void delete(int id) {
		memberDao.delete(id);
	}

	@Transactional
	public Member getMember(int id) {
		return memberDao.getMember(id);
	}

	@Transactional
	public List getAllMember() {
		// TODO Auto-generated method stub
		return memberDao.getAllMember();
	}
	
	@Transactional
	public List getAdmin() {
		// TODO Auto-generated method stub
		return memberDao.getAdmin();
	}
	
	@Transactional
	public List getchkuser(String username) {
		// TODO Auto-generated method stub
		return memberDao.getchkuser(username);
	}

	@Override
	public List login(String username, String password) {
		// TODO Auto-generated method stub
		//return memberDao.login(username,password);
		List result = memberDao.login(username,password);
		return result;
	}
	
	

	
}
