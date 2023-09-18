package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.javassist.expr.Instanceof;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardVO;
import com.smhrd.model.CockVO;
import com.smhrd.model.ImgVO;
import com.smhrd.model.IngredientDAO;
import com.smhrd.model.IngredientVO;

public class ChallBoardInsertService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		

		String imgPath = "C:\\Users\\SMHRD\\Desktop\\Project\\Matender\\src\\main\\webapp\\boardFile";
		System.out.println("이미지가 저장될 경로 : "+imgPath);

		// 3. 파일 최대크기
		int maxSize = 1024 * 1024 * 10; // 10MB

		// 4. 인코딩방식
		String encoding = "UTF-8";

		// 5. 중복제거
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		// 파일 선택 후 전송버튼을 누르면 MultipartRequest객체를 통해서 넘어온다
		MultipartRequest multi;
		int cnt = 0;

		try {
			multi = new MultipartRequest(request, imgPath, maxSize, encoding, rename);

			// 데이터 가져오기
			String nickName = multi.getParameter("nickName");
			String recipeName = multi.getParameter("recipeName");
			String filename = multi.getFilesystemName("filename");
			BigDecimal cockAlc = new BigDecimal(multi.getParameter("cockAlc"));
			String cockInfo = multi.getParameter("cockInfo");
			String cockRec = multi.getParameter("cockRec");
			String cockBase = multi.getParameter("cockBase");
			String[] ingreName = multi.getParameterValues("ingreName");
			String[] volume = multi.getParameterValues("volume");

			
			
			
			
			// 잘 넘어왔는지 확인

			// -> 콘솔창에 잘 뜨는지, file폴더에 사진이 들어가 있는지, 똑같은 file업로드 시 중복제거가 되는지
			System.out.println("RECIPE테이블에 전송할 nickName : " + nickName);
			System.out.println("RECIPE테이블에 전송할 recipeName : " + recipeName);
			System.out.println("RECIPE테이블에 전송할 filename : " + filename);
			System.out.println("RECIPE테이블에 전송할 cockAlc : " +  cockAlc);
			System.out.println("RECIPE테이블에 전송할 cockInfo : " +  cockInfo);
			System.out.println("RECIPE테이블에 전송할 cockRec : " + cockRec);
			System.out.println("ingre테이블에 전송할 재료명 0 : " + ingreName[0]);
			System.out.println("ingre테이블에 전송할 용량 0 : " + volume[0]);

			CockVO cocktail = new CockVO(null, null, recipeName, cockAlc, cockBase, cockInfo, cockRec, nickName);
			cnt = new BoardDAO().recipeWrite(cocktail);

//			filename이 널이 아닐때 이미지 테이블에 파일 네임, 게시글 번호 저장
			
			if (filename == null) {
				response.setContentType("text/html; charset=UTF-8");

					PrintWriter out = response.getWriter();

					out.println("<script>");
					out.println("alert('이미지를 등록하세요!')");

					out.println("history.back()");
					out.println("</script>");
					}			
			
			else{
				CockVO cocktail2 = new BoardDAO().recipeBoard(cocktail);
				String recipeNum = cocktail2.getRecipeNum();
				System.out.println("방금 작성한 레시피 번호 : " +recipeNum);
				ImgVO imgvo = new ImgVO(null, null, recipeNum, filename, null );
				int cnt2 = new BoardDAO().recipeWriteImg(imgvo);
				
				for(int i = 0; i<ingreName.length;i++) {
					System.out.println("wjwkdgkfjdhsi?>");
					IngredientVO ingvo = new IngredientVO(null, recipeNum, ingreName[i], volume[i]);
					int cnt3 = new IngredientDAO().ingreWrite(ingvo);
				}
				
				if (cnt2 > 0) {
					System.out.println("파일저장 성공!");
					if (cnt > 0) {
						System.out.println("글작성 성공!");
						response.setContentType("text/html; charset=UTF-8");
						PrintWriter writer = response.getWriter();
						writer.println("<script>alert('레시피 등록 완료!'); location.href='CockMenu.jsp?menu=challenge';</script>"); 
						writer.close();
					} else {
						System.out.println("글작성 실패!");
						response.setContentType("text/html; charset=UTF-8");
						PrintWriter writer = response.getWriter();
						writer.println("<script>alert('레시피 등록 실패...'); location.href='CockMenu.jsp?menu=challenge';</script>"); 
						writer.close();
					}

				} else {
					System.out.println("파일저장 실패...");
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
}

