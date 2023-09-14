package com.smhrd.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Data;
@Data

@AllArgsConstructor
public class LikeVO {
	
	String recipeNum;
	BigDecimal like;

}
