package com.smhrd.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.smhrd.model.AllVO;
import com.smhrd.model.CockDAO;
import com.smhrd.model.CockVO;
import com.smhrd.model.LikeDAO;
import com.smhrd.model.LikeVO;

public class filterService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("서블릿 옴?");
		try {
			// 요청 본문에서 JSON 데이터 읽기
			BufferedReader reader = request.getReader();
			StringBuilder sb = new StringBuilder();
			String line;
			while ((line = reader.readLine()) != null) {
				sb.append(line);
			}

			// JSON 데이터 파싱
			JSONObject jsonData = new JSONObject(sb.toString());
			System.out.println(jsonData);
			// JSON 데이터에서 필요한 데이터를 미리 추출
			JSONArray baseDataArray = jsonData.getJSONArray("base");
//            JSONArray ingredientDataArray = jsonData.getJSONArray("ingredient");
			JSONArray dosuDataArray = jsonData.getJSONArray("dosu");
			System.out.println("JSON데이터 추출함?");

			// AllVO 리스트 호출
			List<AllVO> joinInquiry = new CockDAO().joinInquiry();

			// 필터링된 AllVO 객체를 저장할 Set
			Set<AllVO> filteredCocktailsSet = new HashSet<>();

			// 선택한 체크박스 값들을 Set 또는 List에 저장

			Set<String> selectedBases = new HashSet<>();
			for (int i = 0; i < baseDataArray.length(); i++) {
				selectedBases.add(baseDataArray.getString(i));
			}

			Set<String> selectedDosus = new HashSet<>();
			for (int i = 0; i < dosuDataArray.length(); i++) {
				selectedDosus.add(dosuDataArray.getString(i));
			}
			System.out.println("LIST에 저장함?" + selectedBases.size());

			if (baseDataArray.length() == 0 && dosuDataArray.length() == 0) {
				JSONArray inquiry2 = new JSONArray(joinInquiry);
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().write(inquiry2.toString());

			} else {

				// 베이스만 선택한 경우
				if (!selectedBases.isEmpty() && selectedDosus.isEmpty()) {
				    for (AllVO cock : joinInquiry) {
				        if (selectedBases.contains(cock.getCockBase())) {
				            filteredCocktailsSet.add(cock);
				        }
				    }
				}

				// 도수만 선택한 경우
				if (selectedBases.isEmpty() && !selectedDosus.isEmpty()) {
				    for (AllVO cock : joinInquiry) {
				        if (isDosuMatch(selectedDosus, cock.getCockAlc())) {
				            filteredCocktailsSet.add(cock);
				        }
				    }
				}

				// 베이스와 도수 모두 선택한 경우
				if (!selectedBases.isEmpty() && !selectedDosus.isEmpty()) {
				    for (AllVO cock : joinInquiry) {
				        if (selectedBases.contains(cock.getCockBase()) && isDosuMatch(selectedDosus, cock.getCockAlc())) {
				            filteredCocktailsSet.add(cock);
				        }
				    }
				}
				// 중복 제거한 결과를 리스트로 변환
				List<AllVO> filteredCocktails = new ArrayList<>(filteredCocktailsSet);
				
				System.out.println(filteredCocktails);
				JSONArray filteredDataArray = new JSONArray(filteredCocktails);
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().write(filteredDataArray.toString());
			}
		} catch (Exception e) {
			e.printStackTrace(); // 예외 정보를 로그로 출력
		}
	}

	private boolean isDosuMatch(Set<String> selectedDosus, BigDecimal cockAlc) {
	    for (String dosu : selectedDosus) {
	        BigDecimal dosuValue = new BigDecimal(dosu);
	        if (dosuValue.compareTo(new BigDecimal(10)) <= 0 && cockAlc.compareTo(dosuValue) <= 0) {
	            return true;
	        } else if (dosuValue.compareTo(new BigDecimal(20)) == 0 && cockAlc.compareTo(new BigDecimal(10)) > 0 && cockAlc.compareTo(dosuValue) <= 0) {
	            return true;
	        } else if (dosuValue.compareTo(new BigDecimal(30)) == 0 && cockAlc.compareTo(new BigDecimal(20)) > 0 && cockAlc.compareTo(dosuValue) <= 0) {
	            return true;
	        } else if (dosuValue.compareTo(new BigDecimal(40)) == 0 && cockAlc.compareTo(new BigDecimal(30)) > 0 && cockAlc.compareTo(dosuValue) <= 0) {
	            return true;
	        } else if (dosuValue.compareTo(new BigDecimal(50)) == 0 && cockAlc.compareTo(new BigDecimal(40)) > 0 && cockAlc.compareTo(dosuValue) <= 0) {
	            return true;
	        }
	    }
	    return false;
	}

	}

