package com.wipro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wipro.bean.Customer;
import com.wipro.service.PizzaService;

@Controller

public class CustomerController {

@Autowired
PizzaService service;
	  @RequestMapping(value = "/login", method = RequestMethod.GET)
	  public String loginGet(){
	    return "login";
	  }
	  @RequestMapping(value = "/Registes", method = RequestMethod.GET)
	  public String RegisterGet(){
	    return "Registes";
	  }

	  @RequestMapping(value="/Register",method = RequestMethod.POST)
	  public String Register(@ModelAttribute("cust") Customer cust,Model m) {
	  System.out.println("hI");
	  System.out.println(cust.getFirstName());
	  System.out.println(cust.getLastName());
	  System.out.println(cust.getPassword());
	  System.out.println(cust.getFirstName());
		  m.addAttribute("list",service.addDept(cust));
	  return "login";
	  }


	  
}
