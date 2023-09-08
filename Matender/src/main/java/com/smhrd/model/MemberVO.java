package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data

@AllArgsConstructor

public class MemberVO {
	
	String nickName;
	String email;
	String gender;
	String age;
	
	
	
}
