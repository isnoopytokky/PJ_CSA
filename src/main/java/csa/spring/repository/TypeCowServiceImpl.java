package csa.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import csa.spring.dao.TypeCowDao;
import csa.spring.model.Typecow;
import csa.spring.service.TypeCowService;



@Service
public class TypeCowServiceImpl implements TypeCowService{
		
	
	@Autowired
	private TypeCowDao typeCowDao;

	@Transactional
	public void add(Typecow typecow) {
		typeCowDao.add(typecow);
	}

	@Transactional
	public void edit(Typecow typecow) {
		typeCowDao.edit(typecow);
	}

	@Transactional
	public void delete(int id) {
		typeCowDao.delete(id);
	}

	@Transactional
	public Typecow getTypecow(int id) {
		return typeCowDao.getTypecow(id);
	}

	@Transactional
	public List getAllTypecow() {
		// TODO Auto-generated method stub
		return typeCowDao.getAllTypecow();
	}
 
	 

	
}
