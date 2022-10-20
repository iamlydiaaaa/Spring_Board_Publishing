package com.springbook.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;
import com.springbook.view.controller.Controller;

public class UpdateBoardController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("글 수정 처리"); 
		// 1. 사용자 입력 정보 추출
		 // request.setCharacterEncoding("utf-8"); 
		 String title = request.getParameter("title"); 
		 String content = request.getParameter("content"); 
		 String seq = request.getParameter("seq");
		 
		 // 2. DB 연동 처리 
		 BoardVO vo = new BoardVO(); 
		 vo.setTitle(title);
		 vo.setContent(content); 
		 vo.setSeq(Integer.parseInt(seq));
		 
		 
		 BoardDAO boardDAO = new BoardDAO(); 
		 boardDAO.updateBoard(vo);

		// 3. 화면 네비게이션
			//글 등록에 성공하면 등록된 글이 포함된 글 목록을 다시 검색해야 한다.
			//따라서, .do 확장자명이 있는 문자열을 리턴하여 redirect처리해야 한다.
			return "getBoardList.do";
	}
}
