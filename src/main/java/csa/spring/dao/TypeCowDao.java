package csa.spring.dao;

import java.util.List;

import csa.spring.model.Typecow;;



public interface TypeCowDao {
	
	public void add(Typecow typecow);
	public void edit(Typecow typecow);
	public void delete(int id);
	public Typecow getTypecow(int id);
	public List getAllTypecow();
	
	
}
