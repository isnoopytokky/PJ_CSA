package csa.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import csa.spring.dao.GenTypeDao;
import csa.spring.model.GenType;
import csa.spring.service.GenTypeService;



@Service
public class GenTypeServiceImpl implements GenTypeService{
		
	
	@Autowired
	private GenTypeDao GenTypeDao;

	@Transactional
	public void add(GenType GenType) {
		GenTypeDao.add(GenType);
	}

	@Transactional
	public void edit(GenType GenType) {
		GenTypeDao.edit(GenType);
	}

	@Transactional
	public void delete(int id) {
		GenTypeDao.delete(id);
	}

	@Transactional
	public GenType getGenType(int id) {
		return GenTypeDao.getGenType(id);
	}

	@Transactional
	public List getAllGenType() {
		// TODO Auto-generated method stub
		return GenTypeDao.getAllGenType();
	}
 
	 

	
}
