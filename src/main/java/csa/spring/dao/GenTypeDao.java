package csa.spring.dao;

import java.util.List;

import csa.spring.model.GenType;;



public interface GenTypeDao {
	
	public void add(GenType GenType);
	public void edit(GenType GenType);
	public void delete(int id);
	public GenType getGenType(int id);
	public List getAllGenType();
	
	
}
