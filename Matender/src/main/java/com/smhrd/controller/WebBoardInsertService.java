package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardVO;

public class WebBoardInsertService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
		//	String path = request.getServletContext().getRealPath("./boardFile");
//			String path = request.getServletContext().getRealPath("");
		String path = "C:\\Users\\SMHRD\\Desktop\\Project\\Matender\\src\\main\\webapp\\boardFile";
			System.out.println(path);

			// 3. 파일 최대크기
			int maxSize = 1024 * 1024 * 10; // 10MB

			// 4. 인코딩방식
			String encoding = "UTF-8";

			// 5. 중복제거
			DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

			// 파일 선택 후 전송버튼을 누르면 MultipartRequest객체를 통해서 넘어온다
			MultipartRequest multi;
			try {
				multi = new MultipartRequest(request, path, maxSize, encoding, rename);
			

			// 데이터 가져오기
			String nickName = multi.getParameter("nickName");
			String boardTitle = multi.getParameter("boardTitle");
			String filename = multi.getFilesystemName("filename");
			String boardText = multi.getParameter("boardText");

			// 잘 넘어왔는지 확인

			// -> 콘솔창에 잘 뜨는지, file폴더에 사진이 들어가 있는지, 똑같은 file업로드 시 중복제거가 되는지
			System.out.println("nickName : " + nickName);
			System.out.println("boardTitle : " + boardTitle);
			System.out.println("filename : " + filename);
			System.out.println("boardText : " + boardText);
			System.out.println("path : " + path);

			BoardVO board = new BoardVO(nickName, boardTitle, boardText);
			int cnt = new BoardDAO().boardWrite(board);

			if (cnt > 0) {
				System.out.println("글작성 성공!");
				response.sendRedirect("WebBoard.jsp");
			} else {
				System.out.println("글작성 실패...");
				response.sendRedirect("WebBoard.jsp");
			}
			} catch (IOException e) {
				
			}

	
	
	}

}
