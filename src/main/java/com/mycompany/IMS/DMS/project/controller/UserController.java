package com.mycompany.IMS.DMS.project.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.mycompany.IMS.DMS.project.entity.User;
import com.mycompany.IMS.DMS.project.repository.UserRepository;
import com.mycompany.IMS.DMS.project.service.UserService;

@Controller
@RestController
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	private UserRepository userRepository;

	@GetMapping("/")
	public ModelAndView index(String email, HttpSession session) {
		return new ModelAndView("index");
	}

	@GetMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("registerUser");
	}

	@ResponseBody
	@PostMapping("/saveuser")
	public ModelAndView saveUser(@ModelAttribute User user) {
		userService.saveUser(user);
		return new ModelAndView("index");
	}

	@GetMapping("/userlist")
	public ModelAndView update() {
		ModelAndView model = new ModelAndView("userlist");
		List<User> list = userService.fetchUserList();
		model.addObject("abc", list);
		return model;
	}

	@GetMapping("/updateuser/{userId}")
	public ModelAndView formupdate(@PathVariable int userId) {
		ModelAndView model = new ModelAndView("updateform");
		;
	/*	User userDB = userRepository.findById(userId).get();*/
		//controller ma repo use garna not a good practise
		model.addObject("abc", userService.updateUser(userId));
		return model;
	}

	@ResponseBody
	@GetMapping("/delete/{userId}")
	public ModelAndView deleteDepartmentById(@RequestBody @PathVariable("userId") int userId) {
		userService.deleteById(userId);
		List<User> user = userRepository.findAll();
		ModelAndView model = new ModelAndView("userlist");
		model.addObject("abc", user);
		return model;
	}

	@PostMapping("/login")
	public ModelAndView loginUser(@ModelAttribute User user, String email, HttpSession session) {

		if (userService.findByEmailAndPassword(user.getEmail(), user.getPassword()) != null) {
			session.setAttribute("email", user.getEmail());
			return new ModelAndView("userprofile");
		}

		return new ModelAndView("index");
	}

	@GetMapping("/resetpassword")
	public ModelAndView resetPassword() {
		return new ModelAndView("resetpassword");

	}

	@GetMapping("/homepage")
	public ModelAndView homepage() {
		return new ModelAndView("userprofile");
	}

	/*
	 * @PostMapping("/user/updatepassword")
	 * 
	 * public GenericResponse changeUserPassword(Locale
	 * locale, @RequestParam("password") String password,
	 * 
	 * @RequestParam("oldpassword") String oldpassword) { User user=
	 * userservice.findUserByEmail(
	 * SecurityContextHolder.getContext().getAuthentication().getName());
	 * if(!userService.checkIfValidOldpassword(user,Oldpassword)) { throw new
	 * InvalidOldPasswordException(); } userService.changeUserPassword(user,
	 * password); return new
	 * GenericResponse(messages.getMessage("message.updatePasswordSuc", null,
	 * locale)); }
	 */

	@GetMapping("/changepassword/{userId}/{password}")
	public boolean changepassword(@PathVariable int userId, @PathVariable String password) {
		boolean a = false;
		a = userService.isTruePassword(userId, password);
		System.out.println("FOUND " + a);
		return a;
	}

	@PostMapping("/changepassword")
	public ModelAndView changepassword(@RequestParam("oldpassword") String oldpassword,
			@RequestParam("newpassword") String newpassword, HttpSession session) {

		String sessionUser = (String) session.getAttribute("email");
		// System.out.println(sessionUser)

		User saveuser = userRepository.findUserByEmail(sessionUser);
		String pwValue = saveuser.getPassword();
		if (pwValue.matches(oldpassword)) {
			saveuser.setPassword(newpassword);
			userRepository.save(saveuser);
		}

		System.out.println("old password :" + oldpassword);

		System.out.println("New password :" + newpassword);

		String newpw = saveuser.getPassword();
		System.out.println(newpw);

		return new ModelAndView("index");
	}

}

//github.com/Seonggil-Jeong
//Spring Security Password Expiration Tutorial codeJava.net