package com.teamright.brokurly.customer.service;

import com.teamright.brokurly.model.AddressVO;
import com.teamright.brokurly.model.CustomerVO;

public interface SignUpService {
	//아이디 중복 체크
	public String idCheck(String customer_id);
	//이메일 체크
	public String emailCheck(String customer_email);
	//전화번호 체크
	public String telCheck(String customer_tel);
	//회원 가입
	public void signUp(CustomerVO customerVO);
	//주소 입력
	public void insertAddress(AddressVO addressVO);
	
	//탈퇴하기에 쓰는 매퍼
	public void deleteId(String customer_id);
	public void deleteCart(String customer_id);
	public void deleteAddress(String customer_id);
	public void deleteCoupon(String customer_id);
}