package com.sport.service;

import java.util.List;

import com.sport.model.User;


public interface UserService {
	void save(User user);
	boolean update(User user);
	boolean delete(int id);
	User findById(int id);
	List<User> findAll();
}
