package csa.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import csa.spring.dao.ColorTypeDao;
import csa.spring.model.ColorType;
import csa.spring.service.ColorTypeService;



@Service
public class ColorTypeServiceImpl implements ColorTypeService{
		
	
	@Autowired
	private ColorTypeDao ColorTypeDao;

	@Transactional
	public void add(ColorType ColorType) {
		ColorTypeDao.add(ColorType);
	}

	@Transactional
	public void edit(ColorType ColorType) {
		ColorTypeDao.edit(ColorType);
	}

	@Transactional
	public void delete(int id) {
		ColorTypeDao.delete(id);
	}

	@Transactional
	public ColorType getColorType(int id) {
		return ColorTypeDao.getColorType(id);
	}

	@Transactional
	public List getAllColorType() {
		// TODO Auto-generated method stub
		return ColorTypeDao.getAllColorType();
	}
 
	 

	
}
