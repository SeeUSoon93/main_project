package com.smhrd.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class IngredientVO {
	
	String ingreNum;
	String recipeNum;
	String ingreName;
	String volume;
	
}
