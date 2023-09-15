package com.smhrd.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AllVO {

		String recipeNum;
		String recipeCode;
		String recipeName;
		BigDecimal cockAlc;
		String cockBase;
		String cockInfo;
		String cockRec;
		String nickName;
		String imgPath;
		BigDecimal LIKE_COUNT;
		BigDecimal BOOKMARK_COUNT;
		BigDecimal REPLE_COUNT;	
	
}
