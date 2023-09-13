package com.smhrd.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data

@AllArgsConstructor

public class CockVO {
	String recipeNum;
	String recipeCode;
	String recipeName;
	BigDecimal cockAlc;
	String cockBase;
	String cockInfo;
	String cockRec;
	String nickName;

}
