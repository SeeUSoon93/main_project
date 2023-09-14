package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor

public class ImgVO {
	String imgNum;
	String boardNum;
	String recipeNum;
	String filename;
	Timestamp imgDate;
	
}
