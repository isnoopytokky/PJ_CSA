package csa.spring.dao;

import java.util.List;

import csa.spring.model.Member;



public interface MemberDao {
	
	public void add(Member member);
	public void edit(Member member);
	public void delete(int id);
	public Member getMember(int id);
	public List getAllMember();
	public List getAdmin();
	public List getchkuser(String username);
}
