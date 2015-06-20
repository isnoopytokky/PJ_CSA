package csa.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;






import csa.spring.dao.ColorTypeDao;
import csa.spring.model.ColorType;



@Repository
public class ColorTypeDaoImpl implements ColorTypeDao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(ColorType ColorType) {
		session.getCurrentSession().save(ColorType);
	}

	@Override
	public void edit(ColorType ColorType) {
		session.getCurrentSession().update(ColorType);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getColorType(id));
	}

	@Override
	public ColorType getColorType(int id) {
		
		return (ColorType) session.getCurrentSession().get(ColorType.class, id);
	}

	@Override
	public List getAllColorType() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from ColorType").list();
	}
 

	
  

}
