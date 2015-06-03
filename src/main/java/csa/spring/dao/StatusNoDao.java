package csa.spring.dao;

import java.util.List;


import csa.spring.model.StatusNo;

public interface StatusNoDao {
	public void add(StatusNo statusno);
	public void edit(StatusNo statusno);
	public void delete(int id);
	public StatusNo getStatusNo(int id);
	public List getAllStatusNo();
	

}
