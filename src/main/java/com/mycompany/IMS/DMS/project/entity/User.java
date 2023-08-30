package com.mycompany.IMS.DMS.project.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Data
@Getter
@Setter
@NoArgsConstructor
//@AllArgsConstructor
public class User {
	public User(int userId, String firstName, String middleName, String lastName, String address, String gender,
			String email, String password, String contact) {
		super();
		this.userId = userId;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.address = address;
		this.gender = gender;
		this.email = email;
		this.password = password;
		this.contact = contact;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userId;
	private String firstName;
	private String middleName;
	private String lastName;
	private String address;
	private String gender;

	@Column(unique = true)
	private String email;

	private String password;

	private String contact;

}
