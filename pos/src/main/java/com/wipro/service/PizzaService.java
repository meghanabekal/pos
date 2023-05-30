package com.wipro.service;

import com.wipro.bean.Customer;

public interface PizzaService {
	public Customer addDept(Customer c);

	Customer loadUserByUsername(String username);

}
