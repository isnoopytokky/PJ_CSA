package csa.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import csa.spring.dao.MemberDao;
import csa.spring.model.Member;


@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(Member member) {
		session.getCurrentSession().save(member);
	}

	@Override
	public void edit(Member member) {
		session.getCurrentSession().update(member);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getMember(id));
	}

	@Override
	public Member getMember(int id) {
		
		return (Member) session.getCurrentSession().get(Member.class, id);
	}

	@Override
	public List getAllMember() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Member").list();
	}
	
	@Override
	public List getAdmin() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Member where statusNo=1").list();
	}
	
	@Override
	public List getchkuser(String username) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Member where user='"+username+"'").list();
	}

}
