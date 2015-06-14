package csa.spring.dao;

import java.util.List;

import csa.spring.model.CattleDetails;



public interface CattleDetailsDao {
	
	public void add(CattleDetails cattledetail);
	public void edit(CattleDetails cattledetail);
	public void delete(int id);
	public CattleDetails getCattleDetail(int id);
	public List getAllCattleDetail();	
	public List getCattleDetailByType(int typeid,int userid);
	
}
