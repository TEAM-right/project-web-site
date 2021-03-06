package com.teamright.brokurly.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@Component
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class CustomerVO {
	@NonNull
	private String customer_id;
	@NonNull
	private String customer_pw;
	@NonNull
	private String customer_name;
	@NonNull
	private String customer_email;
	@NonNull
	private String customer_tel;
	private String customer_birth;
	private String customer_gender;
	private Integer customer_mileage;
	private String customer_grade;
	private Integer customer_totalpay;
	private Integer customer_coupon;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date customer_joindate;
    @NonNull
    private String customer_detailaddress;
    private String customer_year;
    private String customer_month;
    private String customer_day;
    private Integer count;
    private Integer earned_percentage;
}