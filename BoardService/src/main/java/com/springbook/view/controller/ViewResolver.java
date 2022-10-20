package com.springbook.view.controller;


//Controller가 리턴한 View 이름에 접두사(prefix)와 접미사(suffix)를 결합하여 
//최종으로 실행될 View 경로와 파일명을 완성한다.
//이 클래스는 DsplatcherServlet이 생성되고, init() 메소드가 호출될 때 단 1번만 생성된다.
public class ViewResolver {
	public String prefix;
	public String suffix;
	

	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}
	
	public String getView(String viewName) {
		return prefix + viewName + suffix;
	}
}
