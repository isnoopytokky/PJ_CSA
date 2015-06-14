package csa.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import csa.spring.dao.CattleDetailsDao;
import csa.spring.model.CattleDetails;
import csa.spring.service.CattleDetailsService;



@Service
public class CattleDetailsServiceImpl implements CattleDetailsService{
		
	
	@Autowired
	private CattleDetailsDao cattleDetailsDao;

	@Transactional
	public void add(CattleDetails cattleDetails) {
		cattleDetailsDao.add(cattleDetails);
	}

	@Transactional
	public void edit(CattleDetails cattleDetails) {
		cattleDetailsDao.edit(cattleDetails);
	}

	@Transactional
	public void delete(int id) {
		cattleDetailsDao.delete(id);
	}

	@Transactional
	public CattleDetails getCattleDetail(int id) {
		return cattleDetailsDao.getCattleDetail(id);
	}

	@Transactional
	public List getAllCattleDetail() {
		// TODO Auto-generated method stub
		return cattleDetailsDao.getAllCattleDetail();
	}

	@Override
	public List getCattleDetailByType(int typeid,int userid) {
		// TODO Auto-generated method stub
		return cattleDetailsDao.getCattleDetailByType(typeid,userid);
	}
	 

	
}
