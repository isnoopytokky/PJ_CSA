package csa.spring.service;

import java.util.List;

import csa.spring.model.CattleDetails;
import csa.spring.model.Typecow;

public interface TypeCowService {

	public void add(Typecow typecow);
	public void edit(Typecow typecow);
	public void delete(int id);
	public Typecow getTypecow(int id);
	public List getAllTypecow();
}
