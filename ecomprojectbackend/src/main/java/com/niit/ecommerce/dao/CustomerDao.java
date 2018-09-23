package com.niit.ecommerce.dao;

import com.niit.ecommerce.model.Customer;

public interface CustomerDao {
void registerCustomer(Customer customer);
boolean isEmailUnique(String email);
}