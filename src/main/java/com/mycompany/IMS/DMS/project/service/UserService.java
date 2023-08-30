package com.mycompany.IMS.DMS.project.service;

import java.util.List;
import com.mycompany.IMS.DMS.project.entity.User;

public interface UserService {

	// save user
	User saveUser(User user);

	// fetch user list
	List<User> fetchUserList();

	// update user
	/*User updateUser(User user, int userId);*/
	
	User updateUser( int userId);

	// delete user
	void deleteById(int userId);

	// login user
	public User findByEmailAndPassword(String email, String password);

	// check password of given id is true or not from url
	boolean isTruePassword(int userId, String password);

	public User findUserByEmail(User user, String email);

}
