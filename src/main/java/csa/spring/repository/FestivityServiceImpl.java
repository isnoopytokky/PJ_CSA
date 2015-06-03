package csa.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import csa.spring.dao.FestivityDao;

import csa.spring.model.Festivity;

import csa.spring.service.FestivityService;




@Service
public class FestivityServiceImpl implements FestivityService{
		
	
	@Autowired
	private FestivityDao festivityDao;

	@Transactional
	public void add(Festivity festivity) {
		festivityDao.add(festivity);
	}

	@Transactional
	public void edit(Festivity festivity) {
		festivityDao.edit(festivity);
	}

	@Transactional
	public void delete(int id) {
		festivityDao.delete(id);
	}

	@Transactional
	public Festivity getFestivity(int id) {
		return festivityDao.getFestivity(id);
	}

	@Transactional
	public List getAllFestivity() {
		// TODO Auto-generated method stub
		return festivityDao.getAllFestivity();
	}

	@Transactional
	public List getAdmin1() {
		// TODO Auto-generated method stub
		return festivityDao.getAdmin1();
	}
	
	

	

	
}
