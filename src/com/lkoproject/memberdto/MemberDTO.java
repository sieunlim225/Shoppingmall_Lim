package com.lkoproject.memberdto;

import java.sql.Timestamp;

public class MemberDTO {
	private String  id, pw ,name, gender , phone, addnum, address1, address2, email ;
	private Timestamp  joindate;
	
	public MemberDTO() {
		super();

	}
	
	public MemberDTO(String id, String pw, String name, String gender, String phone,
			String addnum, String address1, String address2, String email, Timestamp joindate) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.phone = phone;
		this.addnum = addnum;
		this.address1 = address1;
		this.address2 = address2;
		this.email = email;
		this.joindate = joindate;
		
		
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone1(String phone) {
		this.phone = phone;
	}
	public String getAddnum() {
		return addnum;
	}
	public void setAddnum(String addnum) {
		this.addnum = addnum;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getJoindate() {
		return joindate;
	}
	public void setJoindate(Timestamp joindate) {
		this.joindate = joindate;
	}

}
