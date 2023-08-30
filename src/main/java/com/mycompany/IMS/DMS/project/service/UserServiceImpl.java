package com.mycompany.IMS.DMS.project.service;

import java.util.List;
import java.util.Objects;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mycompany.IMS.DMS.project.entity.User;
import com.mycompany.IMS.DMS.project.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserRepository userRepository;

	@Override
	public User saveUser(User user) {

		return userRepository.save(user);
	}

	@Override
	public List<User> fetchUserList() {

		return (List<User>) userRepository.findAll();
	}

	@Override
	public User updateUser(int userId) {

		User userDB = userRepository.findById(userId).get();

		if (Objects.nonNull(userDB.getFirstName()) && !"".equalsIgnoreCase(userDB.getFirstName())) {
			userDB.setFirstName(userDB.getFirstName());
		}

		if (Objects.nonNull(userDB.getMiddleName()) && !"".equalsIgnoreCase(userDB.getMiddleName())) {
			userDB.setMiddleName(userDB.getMiddleName());
		}

		if (Objects.nonNull(userDB.getLastName()) && !"".equalsIgnoreCase(userDB.getLastName())) {
			userDB.setLastName(userDB.getLastName());
		}

		if (Objects.nonNull(userDB.getAddress()) && !"".equalsIgnoreCase(userDB.getAddress())) {
			userDB.setAddress(userDB.getAddress());
		}

		if (Objects.nonNull(userDB.getGender()) && !"".equalsIgnoreCase(userDB.getGender())) {
			userDB.setGender(userDB.getGender());
		}

		if (Objects.nonNull(userDB.getContact()) && !"".equalsIgnoreCase(userDB.getContact())) {
			userDB.setContact(userDB.getContact());
		}

		if (Objects.nonNull(userDB.getEmail()) && !"".equalsIgnoreCase(userDB.getEmail())) {
			userDB.setEmail(userDB.getEmail());
		}

		if (Objects.nonNull(userDB.getPassword()) && !"".equalsIgnoreCase(userDB.getPassword())) {
			userDB.setPassword(userDB.getPassword());
		}

		return userRepository.save(userDB);
	}

	@Override
	public void deleteById(int userId) {
		userRepository.deleteById(userId);

	}

	@Override
	public User findByEmailAndPassword(String email, String password) {
		return userRepository.findByEmailAndPassword(email, password);
	}

	@Override
	public User findUserByEmail(User user, String email) {
		return userRepository.findUserByEmail(email);
	}


	@Override
	public boolean isTruePassword(int userId, String password) {

		User user = userRepository.findByUserId(userId);
		String dbPw = user.getPassword();
		boolean b = false;
		if (dbPw.equals(password)) {
			b = true;
		}
		return b;
	}
	
	
}
