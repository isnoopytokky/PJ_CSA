package csa.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import csa.spring.dao.StatusNoDao;
import csa.spring.model.StatusNo;
import csa.spring.service.StatusNoService;


@Service
public class StatusNoServiceImpl implements StatusNoService {

	@Autowired
	private StatusNoDao statusnoDao;

	@Transactional
	public void add(StatusNo statusno) {
		statusnoDao.add(statusno);
	}

	@Transactional
	public void edit(StatusNo statusno) {
		statusnoDao.edit(statusno);
	}

	@Transactional
	public void delete(int id) {
		statusnoDao.delete(id);
	}

	@Transactional
	public StatusNo getStatusNo(int id) {
		return statusnoDao.getStatusNo(id);
	}

	@Transactional
	public List getAllStatusNo() {
		// TODO Auto-generated method stub
		return statusnoDao.getAllStatusNo();
	}
}
