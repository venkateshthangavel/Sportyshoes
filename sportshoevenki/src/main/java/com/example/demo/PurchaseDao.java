package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PurchaseDao {

	@Autowired 
	PurchaseRepo repo;
	
	public Purchase insert(Purchase p) {
		// TODO Auto-generated method stub
		return repo.save(p);
	}

	public List<Purchase> getall(){
		return repo.findAll();
	}
	
}
