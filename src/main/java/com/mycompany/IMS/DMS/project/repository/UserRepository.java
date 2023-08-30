package com.mycompany.IMS.DMS.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mycompany.IMS.DMS.project.entity.User;


@Repository
public interface UserRepository extends JpaRepository<User, Integer >{


	public User findByEmailAndPassword(String email, String password);
	
	public User findByUserId(int userId);
	
	public User findUserByEmail(String email);
}
