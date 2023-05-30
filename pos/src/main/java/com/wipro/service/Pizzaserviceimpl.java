package com.wipro.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.bean.Customer;
import com.wipro.dao.CustomerRepository;

@Service
public class Pizzaserviceimpl implements PizzaService{
@Autowired
	CustomerRepository dao;
	@Override
	public Customer addDept(Customer c) {
		// TODO Auto-generated method stub
			Customer cust=dao.save(c);
			System.out.println("Inserted");
			return cust;
	}
	  @Override
	  public Customer loadUserByUsername(String username)
	  {
	    Customer customer = dao.findByEmailAddress(username);
	      return new Customer(customer);
	    

	  }
}
