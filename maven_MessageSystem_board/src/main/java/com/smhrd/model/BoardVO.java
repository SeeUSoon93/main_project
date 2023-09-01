package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
public class BoardVO {
	
	private int num;  // BigDecimal
	@NonNull private String title;
	@NonNull private String writer;
	@NonNull private String filename;
	@NonNull private String content;
	private String b_date; // Timestamp (sql)

}
