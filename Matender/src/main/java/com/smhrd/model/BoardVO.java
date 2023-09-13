package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor

public class BoardVO {
	String boardNum;
	String boardTitle;
	String boardCate;
	Timestamp boardDate;
	BigDecimal boardGood;
	String boardText;
	String nickName;
}
