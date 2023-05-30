package com.wipro.dao;

import javax.transaction.Transactional;

import com.wipro.bean.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, Long>
{
	public Customer findByEmailAddress(String username);
  
}

