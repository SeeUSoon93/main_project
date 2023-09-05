package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data

@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor

public class MemberVO {
	
	@NonNull
	String email;
	@NonNull
	String memID;
	String nickName;
	String gender;
	int age;
	
	
	
}
