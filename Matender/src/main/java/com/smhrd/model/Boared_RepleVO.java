package com.smhrd.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor

public class Boared_RepleVO {
	String repleNo;
	String repleCon;
	Timestamp repleTime;
	String boardNum;
	String nickName;
}
