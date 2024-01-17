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

		int maxSize = 1024 * 1024 * 10; // 10MB

		String encoding = "UTF-8";

		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		MultipartRequest multi;
		int cnt = 0;

		try {
			multi = new MultipartRequest(request, imgPath, maxSize, encoding, rename);

			String nickName = multi.getParameter("nickName");
			String recipeName = multi.getParameter("recipeName");
			String filename = multi.getFilesystemName("filename");
			BigDecimal cockAlc = new BigDecimal(multi.getParameter("cockAlc"));
			String cockInfo = multi.getParameter("cockInfo");
			String cockRec = multi.getParameter("cockRec");
			String cockBase = multi.getParameter("cockBase");
			String[] ingreName = multi.getParameterValues("ingreName");
			String[] volume = multi.getParameterValues("volume");

			CockVO cocktail = new CockVO(null, null, recipeName, cockAlc, cockBase, cockInfo, cockRec, nickName);
			cnt = new BoardDAO().recipeWrite(cocktail);

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

