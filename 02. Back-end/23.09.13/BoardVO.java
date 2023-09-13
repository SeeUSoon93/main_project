package com.smhrd.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor

public class BoardVO {
	String boardNum;
	String nickName;
	String boardTitle;
	String boardText;
	String filename;
	BigDecimal good;
	String date;
}
