package com.springbook.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAO;
import com.springbook.view.controller.Controller;

public class LoginController implements Controller{
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("로그인 처리");
		//1. 사용자 입력 정보 추출
		String id= request.getParameter("id");
		String password= request.getParameter("password");

		//2. DB  연동 처리
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		
		UserDAO userDAO = new UserDAO();
		UserVO user = userDAO.getUser(vo);
		
		//3. 화면 네비게이션
		if(user != null){
			//로그인 성공 시
			return "getBoardList.do";
		} else{
			//로그인 실패 시
			//자동으로 .jsp 확장자가 붙어서 처리되기 때문에 확장자 적을 필요가 없다.
			return "login";
		}
	}
}
