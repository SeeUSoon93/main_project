package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;

@Data
@AllArgsConstructor
public class IngredientVO {
	
	String ingreNum;
	String recipeNum;
	String ingreName;
	String volume;
	
	public IngredientVO(String ingreName) {
		super();
		this.ingreName = ingreName;
	}
	
}
